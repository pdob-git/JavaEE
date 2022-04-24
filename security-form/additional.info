Po wprowadzeniu błędnych danych zobaczysz stronę badcredentials.jsp:
Scenariusz logowania w tym przypadku wygląda następująco:

   1 Klient wysyła żądanie GET lub POST do chronionego zasobu,
   2 Tomcat zapisuje w sesji informacje na temat oryginalnego żądania i przekazuje żądanie do strony z formularzem,
   3 formularz jest odsyłany do klienta,
   4 klient wysyła formularz pod adres j_security_check metodą POST,
   5 wykorzystując domenę bezpieczeńtwa (realm) dokonywana jest weryfikacja danych uwierzytelniających,
   6 dane nie są poprawne, więc żądanie jest przekazywane do strony błędu,
   7 strona z informacją o niepowodzeniu uwierzytelnienia jest odsyłana do klienta.

W przypadku podania poprawnych danych, zostaniemy uwierzytelnieni i przeniesieni do strony, do której próbowaliśmy się początkowo dostać, czyli w naszym przypadku do strony głównej. Tym razem scenariusz wygląda tak:

   1 Klient wysyła żądanie GET lub POST do chronionego zasobu,
   2 Tomcat zapisuje w sesji informacje na temat oryginalnego żądania i przekazuje żądanie do strony z formularzem,
   3 formularz jest odsyłany do klienta,
   4 klient wysyła formularz pod adres j_security_check metodą POST,
   5 uwierzytelnienie z wykorzystaniem domeny bezpieczeństwa się powiodło, więc oryginalne żądanie jest odtwarzane i Tomcat wysyła klientowi w odpowiedzi informacje na jego temat,
   6 klient wykonuje drugi raz żądanie, praktycznie takie samo jak miało miejsce w kroku 1, uwierzytelnione żądanie trafia ponownie do Tomcata i następuje autoryzacja. Jeżeli klient posiada wymaganą
     rolę, to żądanie trafia do docelowego serwletu,
   7 żądanie jest przekazywane do strony widoku,
   8 klient otrzymuje poprawną odpowiedź.

Scenariusz ten możesz także śledzić poprzez obserwowanie żądań i odpowiedzi w konsoli przeglądarki.

---------------------------
Dodatkowe źródła

FORM Based Authentication w specyfikacji serwletów: https://jakarta.ee/specifications/servlet/5.0/jakarta-servlet-spec-5.0.html#form-based-authentication
