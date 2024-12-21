package com.Pradeep.www;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TodoListServlet")
public class TodoListServlet extends HttpServlet {
    private List<Task> tasks = new ArrayList<>();
    private int taskIdCounter = 1;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String taskText = request.getParameter("task");
        if (taskText != null && !taskText.isEmpty()) {
            Task task = new Task(taskIdCounter++, taskText, false);
            tasks.add(task);
        }

        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("todolist.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] completedTaskIds = request.getParameterValues("completed");
        if (completedTaskIds != null) {
            for (String taskId : completedTaskIds) {
                int id = Integer.parseInt(taskId);
                for (Task task : tasks) {
                    if (task.getId() == id) {
                        task.setCompleted(true);
                        break;
                    }
                }
            }
        }

        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("todolist.jsp").forward(request, response);
    }
}
