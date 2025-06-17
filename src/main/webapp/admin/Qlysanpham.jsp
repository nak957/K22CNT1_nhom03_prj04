<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.SanPham" %>
<%
    List<SanPham> danhSachSanPham = (List<SanPham>) request.getAttribute("danhSachSanPham");
    SanPham sanPhamEdit = (SanPham) request.getAttribute("sanPham");
    boolean isEditing = request.getAttribute("isEditing") != null;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Quản lý sản phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">

<h2 class="mb-4">Quản lý sản phẩm</h2>

<form method="post" action="${pageContext.request.contextPath}/SanPhamServlet">
    <input type="hidden" name="action" value="<%= isEditing ? "update" : "add" %>">
    <% if (isEditing) { %>
        <input type="hidden" name="maSanPham" value="<%= sanPhamEdit.getMaSanPham() %>">
    <% } %>

    <div class="row g-2 mb-3">
        <div class="col-md-4">
            <input class="form-control" name="ten" placeholder="Tên sản phẩm" value="<%= isEditing ? sanPhamEdit.getTen() : "" %>" required>
        </div>
        <div class="col-md-4">
            <input class="form-control" name="giaThue" placeholder="Giá thuê" value="<%= isEditing ? sanPhamEdit.getGiaThue() : "" %>" required>
        </div>
        <div class="col-md-4">
            <input class="form-control" name="giaBan" placeholder="Giá bán" value="<%= isEditing ? sanPhamEdit.getGiaBan() : "" %>">
        </div>
        <div class="col-md-4">
            <input class="form-control" name="tienCoc" placeholder="Tiền cọc" value="<%= isEditing ? sanPhamEdit.getTienCoc() : "" %>">
        </div>
        <div class="col-md-4">
            <input class="form-control" name="soLuongTon" placeholder="Số lượng" value="<%= isEditing ? sanPhamEdit.getSoLuongTon() : "" %>" required>
        </div>
        <div class="col-md-4">
            <input class="form-control" name="urlAnh" placeholder="URL ảnh" value="<%= isEditing ? sanPhamEdit.getUrlAnh() : "" %>">
        </div>
        <div class="col-md-4">
            <input class="form-control" name="maDanhMuc" placeholder="Mã danh mục" value="<%= isEditing ? sanPhamEdit.getMaDanhMuc() : "" %>" required>
        </div>
        <div class="col-md-4">
            <input class="form-control" name="trangThai" placeholder="Trạng thái" value="<%= isEditing ? sanPhamEdit.getTrangThai() : "co_san" %>">
        </div>
        <div class="col-md-12">
            <textarea class="form-control" name="moTa" placeholder="Mô tả sản phẩm"><%= isEditing ? sanPhamEdit.getMoTa() : "" %></textarea>
        </div>
    </div>

    <button class="btn btn-<%= isEditing ? "warning" : "primary" %>" type="submit">
        <%= isEditing ? "Cập nhật" : "Thêm mới" %>
    </button>
    <% if (isEditing) { %>
        <a href="${pageContext.request.contextPath}/SanPhamServlet" class="btn btn-secondary ms-2">Hủy</a>
    <% } %>
</form>

<hr>

<h4>Danh sách sản phẩm</h4>
<table class="table table-bordered mt-3">
    <thead class="table-light">
    <tr>
        <th>#</th>
        <th>Tên</th>
        <th>Giá thuê</th>
        <th>Giá bán</th>
        <th>Tồn kho</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <%
        int stt = 1;
        for (SanPham sp : danhSachSanPham) {
    %>
        <tr>
            <td><%= stt++ %></td>
            <td><%= sp.getTen() %></td>
            <td><%= sp.getGiaThue() %></td>
            <td><%= sp.getGiaBan() %></td>
            <td><%= sp.getSoLuongTon() %></td>
            <td><%= sp.getTrangThai() %></td>
            <td>
                <a class="btn btn-sm btn-warning" href="SanPhamServlet?action=edit&id=<%= sp.getMaSanPham() %>">Sửa</a>
                <a class="btn btn-sm btn-danger" href="SanPhamServlet?action=delete&id=<%= sp.getMaSanPham() %>" onclick="return confirm('Bạn có chắc muốn xóa?')">Xóa</a>
            </td>
        </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>
