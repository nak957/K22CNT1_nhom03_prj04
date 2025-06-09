<%@ page import="model.NguoiDung" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Lấy user từ session
    NguoiDung user = (NguoiDung) session.getAttribute("nguoiDung");
    if (user == null) {
        response.sendRedirect(request.getContextPath() + "/login_register/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang người dùng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="alert alert-info text-center">
            Xin chào, <strong><%= user.getHoTen() %></strong>! Chào mừng bạn đến với hệ thống.
        </div>
    </div>

</body>
</html>
