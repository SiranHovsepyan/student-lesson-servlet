package com.example.studentlessonservlet.servlet;


import com.example.studentlessonservlet.manager.LessonManager;
import com.example.studentlessonservlet.manager.StudentManager;
import com.example.studentlessonservlet.model.Lesson;
import com.example.studentlessonservlet.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/singleLesson")

public class SingleLessonServlet extends HttpServlet {
    private LessonManager lessonManager = new LessonManager();
    private StudentManager studentManager = new StudentManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Lesson lessonById = lessonManager.getLessonById(id);
        if (lessonById == null) {
            resp.sendRedirect("/lessons");
        } else {
           List<Student> studentList= studentManager.getByLessonId(id);
           req.setAttribute("lesson",lessonById);
           req.setAttribute("students",studentList);
           req.getRequestDispatcher("/WEB-INF/singleLesson.jsp").forward(req,resp);
        }

    }
}
