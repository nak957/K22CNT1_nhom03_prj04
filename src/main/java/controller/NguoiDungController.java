package controller;

import dao.NguoiDungDAO;
import model.NguoiDung;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login_register/nguoidung")
public class NguoiDungController extends HttpServlet {
    private NguoiDungDAO nguoiDungDAO;

    @Override
    public void init() throws ServletException {
        nguoiDungDAO = new NguoiDungDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "get":
                getNguoiDung(request, response);
                break;
            case "delete":
                xoaNguoiDung(request, response);
                break;
            default:
                response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/login.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                dangKy(request, response);
                break;
            case "login":
                dangNhap(request, response);
                break;
            case "update":
                capNhatNguoiDung(request, response);
                break;
            default:
                response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/login.jsp");
                break;
        }
    }

    private void dangKy(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        String vaiTro = "khach_hang";

        NguoiDung nguoiDung = new NguoiDung(email, matKhau, "Khách hàng", null, null, vaiTro);
        if (nguoiDungDAO.dangKy(nguoiDung)) {
            response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/login.jsp?message=" + java.net.URLEncoder.encode("Đăng ký thành công! Vui lòng đăng nhập.", "UTF-8"));
        } else {
            response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/register.jsp?error=true&message=" + java.net.URLEncoder.encode("Đăng ký thất bại! Email hoặc số điện thoại đã tồn tại.", "UTF-8"));
        }
    }

    private void dangNhap(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");

        NguoiDung nguoiDung = nguoiDungDAO.dangNhap(email, matKhau);
        if (nguoiDung != null) {
            HttpSession session = request.getSession();
            session.setAttribute("nguoiDung", nguoiDung);
            if (nguoiDung.getVaiTro().equals("admin")) {
                response.sendRedirect("/K22CNT1_nhom03_prj04/admin/dashboard.jsp");
            } else {
                response.sendRedirect("/K22CNT1_nhom03_prj04/index.jsp");
            }
        } else {
            response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/login.jsp?error=true&message=" + java.net.URLEncoder.encode("Email/số điện thoại hoặc mật khẩu không đúng!", "UTF-8"));
        }
    }

    private void getNguoiDung(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maNguoiDung = Integer.parseInt(request.getParameter("maNguoiDung"));
        NguoiDung nguoiDung = nguoiDungDAO.getNguoiDungById(maNguoiDung);
        if (nguoiDung != null) {
            request.setAttribute("nguoiDung", nguoiDung);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        } else {
            response.sendRedirect("/K22CNT1_nhom03_prj04/error.jsp");
        }
    }

    private void capNhatNguoiDung(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int maNguoiDung = Integer.parseInt(request.getParameter("maNguoiDung"));
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        String hoTen = request.getParameter("hoTen");
        String soDienThoai = request.getParameter("soDienThoai");
        String diaChi = request.getParameter("diaChi");
        String vaiTro = request.getParameter("vaiTro");

        NguoiDung nguoiDung = new NguoiDung(email, matKhau, hoTen, soDienThoai, diaChi, vaiTro);
        nguoiDung.setMaNguoiDung(maNguoiDung);
        if (nguoiDungDAO.capNhatNguoiDung(nguoiDung)) {
            response.sendRedirect("/K22CNT1_nhom03_prj04/login_register/nguoidung?action=get&maNguoiDung=" + maNguoiDung);
        } else {
            response.sendRedirect("/K22CNT1_nhom03_prj04/error.jsp");
        }
    }

    private void xoaNguoiDung(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int maNguoiDung = Integer.parseInt(request.getParameter("maNguoiDung"));
        if (nguoiDungDAO.xoaNguoiDung(maNguoiDung)) {
            response.sendRedirect("/K22CNT1_nhom03_prj04/logout.jsp");
        } else {
            response.sendRedirect("/K22CNT1_nhom03_prj04/error.jsp");
        }
    }
}