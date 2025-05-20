<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SanPham - Thuê Nội Thất</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-light">

    <!-- Include Header -->
    <jsp:include page="../header.jsp" />

    <!-- Thêm mt-5 để tránh bị che bởi header -->
    <div class="container py-5 mt-5">
       
    </div>
    	<div class="bg-light py-2">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 justify-content-center">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Bộ sưu tập</a></li>
                <li class="breadcrumb-item"><a href="#">Thuê Bàn</a></li>
                <li class="breadcrumb-item active" aria-current="page">Thuê Bàn làm việc</li>
            </ol>
        </nav>
    </div>
<div class="container py-5">
    <div class="row text-center">
        <!-- Hàng 1 -->
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/ban.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn">
            <div>Bàn</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/ghe.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Ghế">
            <div>Ghế</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/ke.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Tủ và kệ">
            <div>Tủ và kệ</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/den.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Đèn">
            <div>Đèn</div>
        </div>

        <!-- Hàng 2 -->
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/giuong.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Giường">
            <div>Giường</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/phukien.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Phụ kiện">
            <div>Phụ kiện</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/khuvuc.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Khu vực">
            <div>Khu vực</div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
            <img src="../assets/img/combo.png" class="img-fluid w-50 mx-auto d-block mb-2" alt="Combo">
            <div>Combo</div>
        </div>
    </div>
</div>
    
    
    <div class="container my-5">
    <h2 class="text-center font-weight-bold mb-5">Câu hỏi thường gặp</h2>
    <div class="row">
        <!-- Câu hỏi 1 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Thanh toán phí thuê như thế nào?</h5>
            <p>Phí thuê là khoản phí thanh toán một lần cho toàn bộ quá trình thuê để đảm bảo sự cam kết của bạn với gói thuê. Ví dụ bạn thuê một ghế sofa trong 3 tháng với giá 1.000.000đ/tháng. Bạn cần thanh toán 3.000.000đ để bắt đầu thuê.</p>
        </div>

        <!-- Câu hỏi 2 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Có cần đặt cọc không?</h5>
            <p>Có, đặt cọc là một phần đảm bảo trách nhiệm của bạn trong quá trình sử dụng, tuy nhiên trong một vài trường hợp và tuỳ từng thời điểm, chúng tôi sẽ có chính sách miễn đặt cọc. Hãy liên hệ để biết thêm nhé.</p>
        </div>

        <!-- Câu hỏi 3 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Nếu đang thuê mà tôi mua đứt thì sao?</h5>
            <p>Chúng tôi không khuyến khích điều này vì nó làm tăng tác lượng rác thải ra trái đất khi sản phẩm không được tái sử dụng. Tuy nhiên nếu bạn thực sự yêu thích sản phẩm đang thuê, chỉ cần thanh toán phần chênh lệch so với giá bán lẻ để có thể sở hữu nhé.</p>
        </div>

        <!-- Câu hỏi 4 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Tôi có phải đền bù nếu làm hỏng sản phẩm?</h5>
            <p>Chúng tôi có quy định cụ thể về hao mòn tự nhiên trong quá trình sử dụng. Tuy nhiên nếu bạn làm hỏng, gãy sản phẩm một cách nghiêm trọng, hãy sử dụng dịch vụ sửa chữa của chúng tôi.</p>
        </div>

        <!-- Câu hỏi 5 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Tôi có thể thuê thêm hoặc giảm bớt sản phẩm?</h5>
            <p>Hoàn toàn có thể, chúng tôi cung cấp dịch vụ linh hoạt giúp bạn mở rộng hay thu hẹp văn phòng một cách dễ dàng.</p>
        </div>

        <!-- Câu hỏi 6 -->
        <div class="col-md-4 mb-4">
            <h5 class="font-weight-bold">Bạn sẽ giúp tôi lắp đặt và thu hồi chứ?</h5>
            <p>Tất nhiên rồi, dịch vụ của Remospace là trọn gói. Chúng tôi cung cấp bao gồm cả vận chuyển, lắp đặt, bảo dưỡng và thu hồi. Bạn chỉ cần đặt và tận hưởng.</p>
        </div>
    </div>
</div>

    <!-- Include Footer -->
    <jsp:include page="../footer.jsp" />

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
