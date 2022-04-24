Dodatkowe źródła

Sekcja Security w specyfikacji serwletów: https://jakarta.ee/specifications/servlet/5.0/jakarta-servlet-spec-5.0.html#security

Tomcat settings
---------------
tomcat-users.xml

<?xml version="1.0" encoding="UTF-8"?>
<tomcat-users xmlns="http://tomcat.apache.org/xml"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd"
              version="1.0">

  <role rolename="admin_role"/>
  <role rolename="user_role"/>
  <user username="administrator" password="hardPassword123" roles="admin_role"/>
  <user username="john" password="john1234" roles="user_role"/>

</tomcat-users>

-----------
server.xml

<Realm className="org.apache.catalina.realm.UserDatabaseRealm"
     resourceName="UserDatabase"/>
</Realm>
