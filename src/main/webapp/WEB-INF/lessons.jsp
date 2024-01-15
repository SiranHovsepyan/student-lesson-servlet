<%@ page import="java.util.List" %>
<%@ page import="com.example.studentlessonservlet.model.Lesson" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11.01.2024
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lessons</title>
</head>
<body>
<%
    List<Lesson> lessons = (List<Lesson>)request.getAttribute("lessons");

%>
Lessons | <a href="/addLesson">Add Lesson</a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Duration</th>
        <th>LecturerName</th>
        <th>Price</th>
        <th>Delete</th>
    </tr>
   <%
       if(!lessons.isEmpty()){
           for (Lesson lesson : lessons) {%>
            <tr>
                <td><%=lesson.getId()%></td>
                <td><a href="/singleLesson?id=<%=lesson.getId()%>"><%=lesson.getName()%></a></td>
                <td><%=lesson.getDuration()%></td>
                <td><%=lesson.getLecturerName()%></td>
                <td><%=lesson.getPrice()%></td>
                <td><a href="/deleteLesson?id=<%=lesson.getId()%>">Delete</a></td>
            </tr>
               
          <% }
       }
   %>
</table>
</body>
</html>
