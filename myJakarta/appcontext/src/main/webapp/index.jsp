<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Notatnik</title>
</head>
<body>
    <h1>Notatnik</h1>
    <form action="save" method="post">
        <fieldset>
            <label for="noteId">Identyfikator notatki</label>
            <input name="noteId" id="noteId" />
        </fieldset>
        <fieldset>
            <label for="noteContent">Treść notatki</label>
            <textarea name="noteContent" id="noteContent"></textarea>
        </fieldset>
        <fieldset>
            <label for="privateNote">Notatka prywatna</label>
            <input name="noteType" type="radio" value="priv" id="privateNote" checked />
            <label for="publicNote">Notatka publiczna</label>
            <input name="noteType" type="radio" value="pub" id="publicNote" />
        </fieldset>
        <input type="submit" value="Zapisz"/>
    </form>
</body>
</html>
