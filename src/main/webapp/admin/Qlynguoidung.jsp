<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container mt-4">
  <h2 class="mb-4">Quản lý người dùng</h2>
 
  <table class="table table-bordered table-hover align-middle text-center">
    <thead class="table-light">
      <tr>
        <th>Mã</th>
        <th>Email</th>
        <th>Họ tên</th>
        <th>Số điện thoại</th>
        <th>Địa chỉ</th>
        <th>Vai trò</th>
        <th>Ngày tạo</th>
        <th>Ngày cập nhật</th>
        <th>Hành động</th>
      </tr>
    </thead>
    <tbody>
      <!-- Sample data (replace with dynamic data using JSTL or servlet) -->
      <tr>
        <td>1</td>
        <td>user1@example.com</td>
        <td>Nguyễn Văn A</td>
        <td>0909123456</td>
        <td>123 Đường Láng, Hà Nội</td>
        <td>Khách hàng</td>
        <td>2025-05-20</td>
        <td>2025-05-20</td>
        <td>
          <button class="btn btn-warning btn-sm me-1" data-bs-toggle="modal" data-bs-target="#userModal" 
                  onclick="editUser(1, 'user1@example.com', 'Nguyễn Văn A', '0909123456', '123 Đường Láng, Hà Nội', 'khach_hang')">
            <i class="bi bi-pencil"></i> Sửa
          </button>
          <button class="btn btn-danger btn-sm" onclick="deleteUser(1)">
            <i class="bi bi-trash"></i> Xóa
          </button>
        </td>
      </tr>
    </tbody>
  </table>

  <!-- Modal for Add/Edit User -->
  <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="userModalLabel">Thêm người dùng</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="userForm" action="${pageContext.request.contextPath}/admin/SaveUser" method="post">
            <input type="hidden" id="ma_nguoi_dung" name="ma_nguoi_dung">
            <div class="mb-3">
              <label for="email" class="form-label fw-medium">Email</label>
              <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
              <label for="mat_khau" class="form-label fw-medium">Mật khẩu</label>
              <input type="password" class="form-control" id="mat_khau" name="mat_khau" required>
            </div>
            <div class="mb-3">
              <label for="ho_ten" class="form-label fw-medium">Họ tên</label>
              <input type="text" class="form-control" id="ho_ten" name="ho_ten" required>
            </div>
            <div class="mb-3">
              <label for="so_dien_thoai" class="form-label fw-medium">Số điện thoại</label>
              <input type="text" class="form-control" id="so_dien_thoai" name="so_dien_thoai">
            </div>
            <div class="mb-3">
              <label for="dia_chi" class="form-label fw-medium">Địa chỉ</label>
              <textarea class="form-control" id="dia_chi" name="dia_chi" rows="3"></textarea>
            </div>
            <div class="mb-3">
              <label for="vai_tro" class="form-label fw-medium">Vai trò</label>
              <select class="form-select" id="vai_tro" name="vai_tro">
                <option value="khach_hang">Khách hàng</option>
                <option value="nhan_vien">Nhân viên</option>
                <option value="admin">Admin</option>
              </select>
            </div>
            <button type="submit" class="btn btn-primary w-100">Lưu</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
  function editUser(ma_nguoi_dung, email, ho_ten, so_dien_thoai, dia_chi, vai_tro) {
    document.getElementById('userModalLabel').textContent = 'Sửa người dùng';
    document.getElementById('ma_nguoi_dung').value = ma_nguoi_dung;
    document.getElementById('email').value = email;
    document.getElementById('mat_khau').required = false; // Không yêu cầu mật khẩu khi sửa
    document.getElementById('ho_ten').value = ho_ten;
    document.getElementById('so_dien_thoai').value = so_dien_thoai || '';
    document.getElementById('dia_chi').value = dia_chi || '';
    document.getElementById('vai_tro').value = vai_tro;
  }

  function deleteUser(ma_nguoi_dung) {
    if (confirm('Bạn có chắc muốn xóa người dùng này?')) {
      window.location.href = '${pageContext.request.contextPath}/admin/DeleteUser?ma_nguoi_dung=' + ma_nguoi_dung;
    }
  }

  document.getElementById('userModal').addEventListener('show.bs.modal', function (event) {
    if (!event.relatedTarget.classList.contains('btn-warning')) {
      document.getElementById('userModalLabel').textContent = 'Thêm người dùng';
      document.getElementById('userForm').reset();
      document.getElementById('ma_nguoi_dung').value = '';
      document.getElementById('mat_khau').required = true; // Yêu cầu mật khẩu khi thêm mới
    }
  });
</script>