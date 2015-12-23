# jak edytować śpiewnik?

1. wchodzimy na https://github.com/mplonski/spiewnik_niebieski (po pierwszej zmianie będziecie mieć kopię śpiewnika na swoim koncie, ale nie będzie w niej dodanych zmian) - dlatego **edytujemy tylko po wejściu na podany w tym punkcie link, nie przez kopię na własnym koncie!**
2. wchodzicie do danej piosenki
3. klikacie ikonkę ołówka po prawej stronie nad plikiem
4. otwiera się edycja pliku… uwaga na:
	- w pierwszych wierszach pojawia się często %w i %r - oznacza to, że tekst po nich jest w spisie treści jako odpowiednio pierwszy wers i pierwsza linijka refrenu
	- tekst od akordów oddzielony jest znakiem % (co chyba łatwo zauważyć) - jeśli w linijce mają być akordy to % musi być między tekstem a akordami
	- nie martwcie się o marginesy i inne techniczne rzeczy - tym zajmuję się ja
	- dziwne linijki na początku muszą być w takiej formie, w jakiej są - ich nie modyfikujemy
	- nowa linia dodawana jest poprzez \\ (analogicznie dwie nowe linie jako \\ \\ itd)
5. po wykonanej edycji przechodzimy na dół strony i klikamy „Propose file change” - resztę rzeczy możemy zostawić bez zmian
6. pokazują nam się zmiany dokonane w pliku. jeśli wszystko się zgadza to klikamy „create pull request” (upewniamy się, że „base fork” rozpoczyna się od __mplonski__, a „base” jest __master__).
7. w nowej stronie klikamy „create pull request”
8. koniec! teraz tylko wystarczy poczekać aż przejrzę zmiany i dodam je do głównej wersji.
