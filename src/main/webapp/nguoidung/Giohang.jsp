<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng - Goldwin</title>

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome 6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-light">
    <!-- Include Header -->
    <jsp:include page="../header.jsp" />

    <!-- Nội dung chính với padding-top để tránh bị che bởi navbar -->
    <div class="container mt-5 pt-5">
        <h2 class="mb-4 text-center">Giỏ Hàng</h2>

        <!-- Thông báo giỏ hàng trống -->
        <div id="emptyCartMessage" class="alert alert-warning text-center d-none" role="alert">
            Giỏ hàng của bạn đang trống. Hãy thêm sản phẩm để tiếp tục!
        </div>

        <!-- Bảng giỏ hàng -->
        <div id="cartContent" class="table-responsive">
            <table class="table table-hover">
                <thead class="thead-light">
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Tổng</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
               
            </table>
        </div>

        <!-- Tổng cộng -->
        <div id="cartSummary" class="text-right mt-4">
            <h4>Tổng cộng: <span id="totalAmount" class="text-primary">1.728.000 đ</span></h4>
            <a href="#" class="btn btn-primary btn-lg mt-3">Thanh toán</a>
        </div>
    </div>

    <!-- Script xử lý giỏ hàng -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function() {
            // Kiểm tra giỏ hàng trống
            function checkEmptyCart() {
                const $cartTable = $('#cartTable');
                const $emptyCartMessage = $('#emptyCartMessage');
                const $cartContent = $('#cartContent');
                const $cartSummary = $('#cartSummary');

                if ($cartTable.children().length === 0) {
                    $emptyCartMessage.removeClass('d-none');
                    $cartContent.addClass('d-none');
                    $cartSummary.addClass('d-none');
                } else {
                    $emptyCartMessage.addClass('d-none');
                    $cartContent.removeClass('d-none');
                    $cartSummary.removeClass('d-none');
                }
            }

            // Cập nhật tổng tiền khi thay đổi số lượng
            $('.btn-quantity').click(function() {
                const $row = $(this).closest('tr');
                const $quantityInput = $row.find('.quantity');
                let quantity = parseInt($quantityInput.val());
                const price = parseInt($row.find('td[data-price]').data('price'));
                const $totalCell = $row.find('.total');

                if ($(this).data('action') === 'increase') {
                    quantity++;
                } else if ($(this).data('action') === 'decrease' && quantity > 1) {
                    quantity--;
                }

                $quantityInput.val(quantity);
                const rowTotal = quantity * price;
                $totalCell.text(formatPrice(rowTotal) + ' đ');

                updateTotalAmount();
            });

            // Xóa sản phẩm
            $('.btn-remove').click(function() {
                $(this).closest('tr').remove();
                updateTotalAmount();
                checkEmptyCart();

                // Cập nhật số lượng giỏ hàng
                cartQuantity = $('#cartTable tr').length;
                updateCartCount();
                fetch('${pageContext.request.contextPath}/updateCart', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: 'cartSize=' + cartQuantity
                });
            });

            // Hàm định dạng giá tiền
            function formatPrice(amount) {
                return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.');
            }

            // Cập nhật tổng cộng
            function updateTotalAmount() {
                let total = 0;
                $('#cartTable .total').each(function() {
                    const amount = parseInt($(this).text().replace(/\D/g, ''));
                    total += amount;
                });
                $('#totalAmount').text(formatPrice(total) + ' đ');
            }

            // Khởi tạo
            checkEmptyCart();
            updateTotalAmount();
        });

        // Đồng bộ với header.jsp
        let cartQuantity = 0;
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

        updateCartCount();
    </script>
</body>
</html>