SQL Injection

Przejdźmy teraz do tego co w tej aplikacji może pójść nie tak. Pozornie nasza logika zabezpiecza dostęp do notatek poprzez hasło. Jeśli ktoś wpisuje błędne hasło, to faktycznie notatki nie da się zobaczyć. Jeżeli jednak spojrzymy bliżej na zapytanie SQL, które wykonywane jest w metodzie findByTitleAndPassword(), to zauważymy w nim pewną podatność na atak SQL Injection. Zapytanie wygląda w taki sposób:

SELECT id, title, content, pass FROM notes WHERE title = 'tytuł_z_urla' AND pass = 'hasło_z_formularza'
file_copy

Użytkownik ma wpływ zarówno na to co będzie parametrem title, jak i na hasło wpisywane w formularzu. Wyobraźmy sobie, że jako tytuł w URLu będzie dowolny ciąg znaków, a jako hasło wpiszemy coś takiego: hacker' OR 1=1 #. Powstanie takie zapytanie:

SELECT id, title, content, pass FROM notes WHERE title = 'cokolwiek' AND pass = 'hacker' OR 1=1 #'
file_copy

Znak # oznacza w MySQL komentarz i dzięki niemu nie otrzymamy błędu składni, ponieważ ostatni apostrof zostanie zignorowany.

Wykonując zapytanie w MySQL Workbenchu w wyniku zobaczymy wszystkie notatki:


dostęp do której kolwiek notatki
hacker' OR 1=1 AND id=2 #
hacker' OR 1=1 AND id=3 #
hacker' OR 1=1 AND id=4 #

SELECT id, title, content, pass FROM notes WHERE title = 'cokolwiek' AND pass = 'hacker' OR 1=1 AND id=2 #'


Dodatkowe źródła

Dokumentacja klasy PreparedStatement: https://docs.oracle.com/en/java/javase/15/docs/api/java.sql/java/sql/PreparedStatement.html

