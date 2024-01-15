<%@ page import="java.util.List" %>
<%@ page import="com.example.studentlessonservlet.model.Student" %>
<%@ page import="com.example.studentlessonservlet.model.Lesson" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13.01.2024
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
</head>
<body>

<% List<Lesson> lessons = (List<Lesson>) request.getAttribute("lessons");
%>
Add Student<br>
<form method="post" action="/addStudent">
    Name:<input type="text" name="name"><br>
    Surname:<input type="text" name="surname"><br>
    Email:<input type="text" name="email"><br>
    Age:<input type="number" name="age">
    <select name="lessonId">
        <% for (Lesson lesson : lessons) { %>
        <option value="<%=lesson.getId()%>"><%=lesson.getName()%></option>
        <% }
        %>

    </select><br>
    <input type="submit" value="add">
</form>
</body>
</html>