<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hồ Sơ Của Tôi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
<div class="d-flex">
    <!-- Sidebar -->
    <div class="col-3 bg-light p-4 border-end">
        <div class="text-center mb-4">
            <!-- Avatar người dùng -->
            <label for="avatarInput">
                <img id="avatarPreview" src="https://via.placeholder.com/100"
                     class="rounded-circle img-thumbnail"
                     style="width: 120px; height: 120px; object-fit: cover; cursor: pointer;"
                     alt="Avatar">
            </label>
            <input type="file" id="avatarInput" accept="image/*" class="d-none">
            <div class="mt-2 fw-bold">oanhkimmm04052004</div>
        </div>
        <ul class="list-unstyled">
            <li class="mb-3 d-flex align-items-center">
                <i class="fas fa-user me-2"></i> Tài Khoản Của Tôi
            </li>
            <li class="mb-3 d-flex align-items-center">
                <i class="fas fa-sign-out-alt me-2"></i> Đăng Xuất
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="col-9 p-4">
        <h2 class="mb-2">Hồ Sơ Của Tôi</h2>
        <p class="text-muted mb-4">Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
        <div class="row">
            <div class="col-md-8">
                <div class="mb-3">
                    <label class="form-label">Họ và tên</label>
                    <input type="text" class="form-control" value="">
                </div>
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" value="">
                </div>
                <div class="mb-3">
                    <label class="form-label">Số điện thoại</label>
                    <input type="text" class="form-control">
                </div>
                <div class="mb-3">
                    <label class="form-label">Địa chỉ</label>
                    <input type="text" class="form-control">
                </div>
                <button class="btn btn-danger">LƯU</button>
            </div>
        </div>
    </div>
</div>

<script>
    const input = document.getElementById('avatarInput');
    const preview = document.getElementById('avatarPreview');

    input.addEventListener('change', function () {
        const file = this.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                preview.src = e.target.result;
            }
            reader.readAsDataURL(file);
        }
    });
</script>
</body>
</html>
