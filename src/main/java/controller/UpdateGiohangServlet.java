package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateCart")
public class UpdateGiohangServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cartSize = request.getParameter("cartSize");
        HttpSession session = request.getSession();

        if (cartSize != null) {
            try {
                session.setAttribute("cartSize", Integer.parseInt(cartSize));
            } catch (NumberFormatException e) {
                // Xử lý lỗi nếu cartSize không phải số
                session.setAttribute("cartSize", 0);
            }
        }
    }
}