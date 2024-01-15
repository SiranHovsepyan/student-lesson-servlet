<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13.01.2024
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Lesson</title>
</head>
<body>
Add Lesson<br>
<form method="post" action="/addLesson">
    Lesson Name:<input type="text" name="lessonName"><br>
    Lesson Duration:<input type="number" name="duration"><br>
    Lesson LecturerName:<input type="text" name="lecturerName"><br>
    Lesson Price:<input type="number" name="price"><br>
    <input type="submit" value="add">
</form>
</body>
</html>
