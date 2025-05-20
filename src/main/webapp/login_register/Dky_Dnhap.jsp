<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập - Remospace</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-light">

    <!-- Include header -->
    <jsp:include page="../header.jsp" />

    <!-- Container chính -->
    <div class="container mt-5 pt-5 d-flex justify-content-center" style="margin-top: 120px !important;">
        <div class="card shadow-sm rounded-4 w-100" style="max-width: 400px;">
            <div class="card-body px-4 py-4">

                <!-- Logo và tiêu đề -->
                <div class="text-center mb-3">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/HD_transparent_picture.png/1200px-HD_transparent_picture.png" alt="Logo" height="28">
                    <h5 class="mt-2 mb-1">Đăng nhập</h5>
                    <small class="text-muted">để tiếp tục với Goldwin</small>
                </div>

               

               

                <!-- Form đăng nhập -->
                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Địa chỉ email hoặc số điện thoại</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                   
                     <div class="mb-3">
                        <label for="email" class="form-label">Mật khẩu</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Tiếp tục</button>
                </form>

                <!-- Đăng ký -->
                <div class="text-center mt-3">
                    <small>Chưa có tài khoản? <a href="#">Đăng ký</a></small>
                </div>

                <!-- Footer -->
                <div class="text-center mt-3">
                    <small class="text-muted">Secured by <strong>clerk</strong></small>
                </div>

            </div>
        </div>
    </div>
    
    
    <!-- Form đăng ky -->
     <div class="container mt-5 pt-5 d-flex justify-content-center" style="margin-top: 120px !important;">
        <div class="card shadow-sm rounded-4 w-100" style="max-width: 400px;">
            <div class="card-body px-4 py-4">

                <!-- Logo và tiêu đề -->
                <div class="text-center mb-3">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/HD_transparent_picture.png/1200px-HD_transparent_picture.png" alt="Logo" height="28">
                    <h5 class="mt-2 mb-1">Đăng ký tài khoản</h5>
                    <small class="text-muted">để tiếp tục với Goldwin</small>
                </div>

               

               

                <!-- Form đăng nhập -->
                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Địa chỉ email hoặc số điện thoại</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                   
                     <div class="mb-3">
                        <label for="email" class="form-label">Mật khẩu</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Nhập lại mật khẩu</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Tiếp tục</button>
                </form>

                <!-- Đăng ký -->
                <div class="text-center mt-3">
                    <small>Đã có tài khoản? <a href="#">Đăng nhập</a></small>
                </div>

                <!-- Footer -->
                <div class="text-center mt-3">
                    <small class="text-muted">Secured by <strong>clerk</strong></small>
                </div>

            </div>
        </div>
    </div>
    


    <!-- Include footer -->
    <jsp:include page="../footer.jsp" />

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    
    
    
</body>
</html>