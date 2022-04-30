Potencjalne problemy

Przy uruchamianiu programu mogą pojawić się różne problemy, które najczęściej można rozwiązać poprzez dodanie dodatkowych parametrów do adresu URL bazy danych.

Błąd The server time zone value 'CEST' is unrecognized or represents more than one time zone. You must configure either the server or JDBC driver (via the 'serverTimezone' configuration property) to use a more specifc time zone value if you want to utilize time zone support.

Do adresu URL należy dodać parametr określający strefę czasową, np. jdbc:mysql://localhost:3306/employees?serverTimezone=UTC

Błąd Public Key Retrieval is not allowed.

Do adresu URL należy dodać dodatkowy parametr jdbc:mysql://localhost:3306/employees?allowPublicKeyRetrieval=true

Jeżeli występuje kilka błędów jednocześnie, to adresu bazy można dodać kilka parametrów, np. jdbc:mysql://localhost:3306/employees?serverTimezone=UTC&allowPublicKeyRetrieval=true

Błąd Access denied for user 'roots'@'localhost' (using password: YES)

Wprowadzona nazwa użytkownika lub hasło nie są poprawne. Sprawdź, czy nie ma w nich literówki.

 

Dodatkowe źródła

Dokumentacja klasy Statement: https://docs.oracle.com/en/java/javase/15/docs/api/java.sql/java/sql/Statement.html

Dokumentacja klasy ResultSet: https://docs.oracle.com/en/java/javase/15/docs/api/java.sql/java/sql/ResultSet.html

Kod z tej lekcji: https://github.com/javastartpl/technologie-webowe/tree/master/jdbc
