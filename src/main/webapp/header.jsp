<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navbar (Fixed) -->
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm px-4 fixed-top">
    
   <!-- Logo -->
       <a class="navbar-brand font-weight-bold text-primary" href="#">
    <img src="assets/img/logo.png" alt="Goldwin Logo" width="140" height="90" class="d-inline-block align-text-top">
	   </a>

    <!-- Toggle button on mobile -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navigation links & actions -->
    <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
        <!-- Menu trung tâm -->
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Trang chủ</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Cho Doanh nghiệp</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Sản phẩm</a></li>
        </ul>

        <!-- Nút bên phải -->
        <div class="d-flex align-items-center">
            <!-- Giỏ hàng -->
            <a id="cartButton" href="${pageContext.request.contextPath}/nguoidung/Giohang.jsp" class="btn btn-outline-primary btn-sm position-relative mr-2">
                <i class="fa-solid fa-shopping-cart"></i> <!-- Thay fa-cart-plus bằng fa-shopping-cart -->
                <span id="cartCount" class="badge badge-warning position-absolute" style="top: -6px; right: -10px; display: none;">0</span>
            </a>

            <!-- Vị trí -->
            <button class="btn btn-outline-secondary btn-sm mr-2">
                <img src="https://flagcdn.com/w20/vn.png" width="20" height="14" class="mr-1"> Hà Nội
            </button>

            <!-- Đăng nhập -->
            <button class="btn btn-primary btn-sm">Đăng nhập</button>
        </div>
    </div>
</nav>

<!-- Bootstrap + jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Font Awesome (Kiểm tra lại liên kết) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Script giỏ hàng -->
<script>
    let cartQuantity = 0;

    // Lấy số lượng từ session (nếu có)
    <% if (session.getAttribute("cartSize") != null) { %>
        cartQuantity = <%= session.getAttribute("cartSize") %>;
    <% } %>

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

        // Lưu số lượng vào session
        fetch('${pageContext.request.contextPath}/updateCart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: 'cartSize=' + cartQuantity
        });
    }

    // Khởi tạo badge
    updateCartCount();
</script>