package controller;

import dao.SanPhamDAO;
import model.SanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/SanPhamServlet")
public class SanPhamServlet extends HttpServlet {
    private SanPhamDAO sanPhamDAO;

    @Override
    public void init() throws ServletException {
        sanPhamDAO = new SanPhamDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "edit":
                hienThiFormSua(request, response);
                break;
            case "delete":
                xoaSanPham(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            themSanPham(request, response);
        } else if ("update".equals(action)) {
            capNhatSanPham(request, response);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<SanPham> danhSach = sanPhamDAO.danhSachSanPham();
        request.setAttribute("danhSachSanPham", danhSach);
        request.getRequestDispatcher("admin/Qlysanpham.jsp").forward(request, response);
    }

    private void themSanPham(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SanPham sp = getSanPhamFromRequest(request);
        sanPhamDAO.insert(sp);
        response.sendRedirect("SanPhamServlet");
    }

    private void capNhatSanPham(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SanPham sp = getSanPhamFromRequest(request);
        sp.setMaSanPham(Integer.parseInt(request.getParameter("maSanPham")));
        sanPhamDAO.update(sp);
        response.sendRedirect("SanPhamServlet");
    }

    private void xoaSanPham(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int maSanPham = Integer.parseInt(request.getParameter("id"));
        sanPhamDAO.delete(maSanPham);
        response.sendRedirect("SanPhamServlet");
    }

    private void hienThiFormSua(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        SanPham sp = sanPhamDAO.getById(id);
        request.setAttribute("sanPham", sp);
        request.setAttribute("isEditing", true);
        hienThiDanhSach(request, response); // Gọi lại danh sách để hiển thị chung
    }

    private SanPham getSanPhamFromRequest(HttpServletRequest request) {
        String ten = request.getParameter("ten");
        String moTa = request.getParameter("moTa");
        int maDanhMuc = Integer.parseInt(request.getParameter("maDanhMuc"));
        double giaThue = Double.parseDouble(request.getParameter("giaThue"));
        double giaBan = Double.parseDouble(request.getParameter("giaBan"));
        double tienCoc = Double.parseDouble(request.getParameter("tienCoc"));
        int soLuongTon = Integer.parseInt(request.getParameter("soLuongTon"));
        String urlAnh = request.getParameter("urlAnh");
        String trangThai = request.getParameter("trangThai");

        return new SanPham(ten, moTa, maDanhMuc, giaThue, giaBan, tienCoc, soLuongTon, urlAnh, trangThai);
    }
}
