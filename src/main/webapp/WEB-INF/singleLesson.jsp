
<%@ page import="java.util.List" %>
<%@ page import="com.example.studentlessonservlet.model.Lesson" %>
<%@ page import="com.example.studentlessonservlet.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14.01.2024
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Lesson lesson = (Lesson) request.getAttribute("lesson");%>
<%List<Student> studentList = (List<Student>) request.getAttribute("students");%>
<html>
<head>
    <title><%=lesson.getName()%>></title>
</head>
<body>
<h2><%=lesson.getName()%> |<%=lesson.getId()%></h2>
Duration:<span><%=lesson.getDuration()%></span>
LecturerName:<span><%=lesson.getLecturerName()%></span>
Price:<span><%=lesson.getPrice()%></span>
Students:
<%
    if (studentList != null && !studentList.isEmpty()) {
%>

<table border="2 solid">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>SurName</th>
        <th>Email</th>
        <th>Age</th>
    </tr>
    <%
        for (Student student : studentList) {%>
    <tr>
        <td><%=student.getId()%>
        </td>
        <td><%=student.getName()%>
        </td>
        <td><%=student.getSurname()%>
        </td>
        <td><%=student.getEmail()%>
        </td>
        <td><%=student.getAge()%>
        </td
    </tr>

    <% }

    %>
</table>
<% }%>
</body>
</html>
