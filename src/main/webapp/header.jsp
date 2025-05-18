<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Header Demo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome 6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-light">
    <!-- Navbar (Fixed) -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm px-4 fixed-top">
        <!-- Logo -->
        <a class="navbar-brand font-weight-bold text-primary" href="#">
            <span class="text-lowercase">Goldwin</span>
        </a>

        <!-- Toggle button on mobile -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">h</span>
        </button>

        <!-- Navigation links & actions -->
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
            <!-- Menu trung tâm -->
            <ul class="navbar-nav mx-auto">
                <li class="nav-item active"><a class="nav-link" href="#">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Cho Doanh nghiệp</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Sản phẩm</a></li>
            </ul>

            <!-- Nút bên phải -->
            <div class="d-flex align-items-center">
                <!-- Giỏ hàng -->
                <button id="cartButton" class="btn btn-outline-primary btn-sm position-relative mr-2">
                    <i class="fa-solid fa-cart-plus"></i>
                    <span id="cartCount" class="badge badge-warning position-absolute" style="top: -6px; right: -10px; display: none;">0</span>
                </button>

                <!-- Vị trí -->
                <button class="btn btn-outline-secondary btn-sm mr-2">
                    <img src="https://flagcdn.com/w20/vn.png" width="20" height="14" class="mr-1"> Hồ Chí Minh
                </button>

                <!-- Đăng nhập -->
                <button class="btn btn-primary btn-sm">Đăng nhập</button>
            </div>
        </div>
    </nav>

    <!-- Nội dung chính với padding-top để tránh bị che bởi navbar -->
   
    <!-- Bootstrap + jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Script giỏ hàng -->
    <script>
        let cartQuantity = 0;

        function updateCartCount() {
            const badge = document.getElementById('cartCount');
            if (cartQuantity > 0) {
                badge.style.display = 'inline-block';
                badge.innerText = cartQuantity > 9 ? '9+' : cartQuantity;
            } else {
                badge.style.display = 'none';
            }
        }

        function addToCart() {
            cartQuantity++;
            updateCartCount();
        }

        // Nếu bạn lấy số từ server, gán cartQuantity ở đây
        // cartQuantity = <%= session.getAttribute("cartSize") %>;
        // updateCartCount();
    </script>
</body>
</html>