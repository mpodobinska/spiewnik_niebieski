#!/usr/bin/python
# -*- coding: utf-8 -*-

import re
import subprocess
import os
import sys
import tempfile

FNULL = open(os.devnull, 'w')


def texi2pdf(input_filename, output_filename):
    subprocess.call(
        [
            'texi2pdf',
            '-c',
            '-o',
            output_filename,
            input_filename
        ],
        stdout=FNULL
    )


def gen_start_page_pdf(filename, start_page=1):
    tmp = tempfile.NamedTemporaryFile(
        suffix='.tex',
        delete=False
    )
    with open('%s.tex' % filename, 'r') as f:
        for line in f.readlines():
            if 'usepackage' in line and 'geometry' in line:
                tmp.write('\\usepackage[top=1.5cm,bottom=1.5cm,left=2cm,right=1.5cm]{geometry}\n')
                continue
            if '\\begin{document}' in line:
                tmp.write('\\usepackage{showframe}\n')
                tmp.write('\\setcounter{page}{%s}\n' % start_page)
            tmp.write(line)
    tmp.close()

    texi2pdf(
        tmp.name,
        '../tmp/%s.pdf' % filename
    )
    os.unlink(tmp.name)


_, filename, move_by = sys.argv

move_by = float(move_by)
with open(filename) as f:
    lines = f.readlines()

with open(filename, 'w') as f:
    for line in lines:
        regex = r'\\begin\{tabular\}\{\@\{\}p\{(?P<number>[^c]+)cm\}'
        match = re.match(regex, line)
        if match is not None:
            num = float(match.group('number'))
            f.write(
                line.replace(match.group('number'), "%.2f" % (num+move_by))
            )
        else:
            f.write(line)

gen_start_page_pdf(filename[:-4])
