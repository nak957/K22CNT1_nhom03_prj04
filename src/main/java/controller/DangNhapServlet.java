package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.NguoiDungDAO;
import model.NguoiDung;

@WebServlet("/DangNhapServlet")
public class DangNhapServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String matKhau = request.getParameter("password");

        NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();
        NguoiDung nguoiDung = nguoiDungDAO.checkLogin(email, matKhau);

        if (nguoiDung != null) {
            HttpSession session = request.getSession();
            session.setAttribute("nguoiDung", nguoiDung);

            // Điều hướng theo vai trò
            if ("admin".equalsIgnoreCase(nguoiDung.getVaiTro())) {
                response.sendRedirect("admin/index_admin.jsp");
            } else {
                response.sendRedirect("nguoidung/index_nguoidung.jsp");
            }
        } else {
            request.setAttribute("errorMessage", "Sai email hoặc mật khẩu!");
            request.getRequestDispatcher("login_register/login.jsp").forward(request, response);
        }
    }
}
