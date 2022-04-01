<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Centrum sterowania - Logowanie</title>
</head>
<body>
    <h2>Zaloguj się</h2>
    <form action="<%=request.getContextPath() + "/login"%>" method="post">
        <div>
            <label for="username">Nazwa użytkownika</label>
            <input name="username" id="username">
        </div>
        <div>
            <label for="password">Hasło</label>
            <input name="password" type="password" id="password">
        </div>
        <input type="submit" value="Zaloguj">
    </form>
</body>
</html>
