<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Footer Remospace</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>



<!-- Footer -->
<footer class="bg-light text-dark pt-4">
    <div class="container">
        <div class="row">

            <!-- Thông tin công ty -->
            <div class="col-md-4 mb-4">
                <h5 class="text-uppercase">Công ty Cổ phần Remospace</h5>
                <p class="mb-1">Hotline: <a href="tel:0339037930">0339037930</a></p>
                <p class="mb-1">Email: <a href="mailto:hi@remospace.co">hi@remospace.co</a></p>
                <p class="mb-1">K2.11, Đường D15, KDC River Park,<br>TP. Thủ Đức, TP. Hồ Chí Minh, Việt Nam</p>
                <p class="mb-0">Mã số DN: 0317826691 - Sở KH&ĐT TP.HCM</p>
            </div>

            <!-- Liên kết -->
            <div class="col-md-4 mb-4">
                <h5 class="text-uppercase">Liên kết</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Về chúng tôi</a></li>
                    <li><a href="#">Câu hỏi</a></li>
                    <li><a href="#">Thuê hay mua?</a></li>
                    <li><a href="#">Tin tức</a></li>
                    <li><a href="#">Điều khoản sử dụng</a></li>
                    <li><a href="#">Chính sách bảo mật</a></li>
                    <li><a href="#">Mẫu hợp đồng thuê</a></li>
                </ul>
            </div>

            <!-- Chính sách -->
            <div class="col-md-4 mb-4">
                <h5 class="text-uppercase">Chính sách</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Chính sách vận chuyển</a></li>
                    <li><a href="#">Chính sách thanh toán</a></li>
                    <li><a href="#">Chính sách hoàn trả</a></li>
                    <li><a href="#">Quy định về hỏng hóc</a></li>
                    <li><a href="#">Gia hạn hoặc dừng thuê</a></li>
                </ul>
            </div>

        </div>

        <div class="text-center py-3 border-top">
            © <%= java.time.Year.now() %> Remospace. All rights reserved.
        </div>
    </div>
</footer>

<!-- Script Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
