<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bàn - Thuê Nội Thất</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-white">

    <!-- Include Header -->
    <jsp:include page="../header.jsp" />

    <!-- Breadcrumb -->
    <div class="bg-white py-2 mt-5">
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
    </div>

    <!-- Danh sách sản phẩm -->
    <div class="container py-1">
        <div class="row text-center">
            <!-- Hàng 1 -->
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/banan.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn ăn">
                <div>Bàn ăn</div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/banduan.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn dự án">
                <div>Bàn dự án</div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/banhop.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn họp">
                <div>Bàn họp</div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/banlamviec.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn làm việc">
                <div>Bàn làm việc</div>
            </div>

            <!-- Hàng 2 -->
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/banlounge.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Banlounge">
                <div>Banlounge</div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 mb-4">
                <img src="../assets/img/bantrangdiem.webp" class="img-fluid w-50 mx-auto d-block mb-2" alt="Bàn Trang Điểm">
                <div>Bàn Trang Điểm</div>
            </div>
          
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="../footer.jsp" />

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>