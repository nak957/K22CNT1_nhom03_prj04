<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ </title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <!-- Hero Section -->
    <div class="container text-center py-5 bg-white position-relative">
        <h1 class="display-4 font-weight-bold">Dựng mua nội thất,<br>hãy thuê nào.</h1>
        <p class="lead text-muted">Trang trí không gian theo cách của bạn. Thuê nội thất cho không gian của bạn ngay bây giờ và làm mới không gian sống của bạn một cách dễ dàng.</p>
        <img src="assets/img/anhghe1.png" alt="Nội thất" class="img-fluid mt-4 rounded">
        <a href="#" class="btn btn-primary mt-3">Zalo Trò chuyện</a>
        <a href="#" class="btn btn-primary mt-3 ml-2">Gọi chúng tôi</a>
        <!-- Decorative Elements -->
        <div class="position-absolute" style="top: 20%; left: 10%; opacity: 0.3; font-size: 40px;">⚪</div>
        <div class="position-absolute" style="top: 40%; right: 10%; opacity: 0.3; font-size: 40px;">🔶</div>
        <div class="position-absolute" style="bottom: 20%; left: 15%; opacity: 0.3; font-size: 40px;">🔺</div>
        <div class="position-absolute" style="bottom: 10%; right: 15%; opacity: 0.3; font-size: 40px;">🔳</div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>