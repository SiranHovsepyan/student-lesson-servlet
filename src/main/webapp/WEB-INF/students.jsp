<%@ page import="java.util.List" %>
<%@ page import="com.example.studentlessonservlet.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11.01.2024
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<body>
<%
    List<Student> students = (List<Student>) request.getAttribute("students");

%>
Students | <a href="/addStudent">Add Student</a>
<%
    if (students != null && !students.isEmpty()) {
%>

<table border="2 solid">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>SurName</th>
        <th>Email</th>
        <th>Age</th>
        <th>Lesson Name</th>
        <th>Lesson Duration</th>
        <th>Delete</th>
    </tr>
    <%
        for (Student student : students) {%>
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
        </td>
        <td><%=student.getLesson().getName()%>
        </td>
        <td><%=student.getLesson().getDuration()%>
        </td>
        <td><a href="/deleteStudent?id=<%=student.getId()%>">Delete</a></td>
    </tr>

    <% }

    %>
</table>
<% }%>
</body>
</html>
