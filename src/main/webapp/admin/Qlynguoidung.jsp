<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container mt-4">
  <div class="d-flex justify-content-between align-items-center mb-3">
    <h2 class="fw-bold mb-0">Quản lý người dùng</h2>
    
  </div>

  <div class="table-responsive">
    <table class="table table-bordered table-hover align-middle text-center">
      <thead class="table-light">
        <tr class="align-middle">
          <th>Mã</th>
          <th>Email</th>
          <th>Họ tên</th>
          <th>SĐT</th>
          <th>Địa chỉ</th>
          <th>Vai trò</th>
          <th>Ngày tạo</th>
          <th>Cập nhật</th>
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
          <td><span class="badge bg-secondary">Khách hàng</span></td>
          <td>2025-05-20</td>
          <td>2025-05-20</td>
          <td>
            <button class="btn btn-sm btn-warning me-1" data-bs-toggle="modal" data-bs-target="#userModal" 
                    onclick="editUser(1, 'user1@example.com', 'Nguyễn Văn A', '0909123456', '123 Đường Láng, Hà Nội', 'khach_hang')">
              <i class="bi bi-pencil">Sửa </i>
            </button>
            <button class="btn btn-sm btn-danger" onclick="deleteUser(1)">
              <i class="bi bi-trash">Xóa </i>
            </button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Modal: Thêm/Sửa người dùng -->
  <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content shadow">
        <div class="modal-header">
          <h5 class="modal-title fw-semibold" id="userModalLabel">Thêm người dùng</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">
          <form id="userForm" action="${pageContext.request.contextPath}/admin/SaveUser" method="post" class="row g-3">
            <input type="hidden" id="ma_nguoi_dung" name="ma_nguoi_dung">

            <div class="col-md-6">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="user@example.com" required>
            </div>

            <div class="col-md-6">
              <label for="mat_khau" class="form-label">Mật khẩu</label>
              <input type="password" class="form-control" id="mat_khau" name="mat_khau" placeholder="••••••" required>
            </div>

            <div class="col-md-6">
              <label for="ho_ten" class="form-label">Họ tên</label>
              <input type="text" class="form-control" id="ho_ten" name="ho_ten" placeholder="Nguyễn Văn A" required>
            </div>

            <div class="col-md-6">
              <label for="so_dien_thoai" class="form-label">Số điện thoại</label>
              <input type="text" class="form-control" id="so_dien_thoai" name="so_dien_thoai" placeholder="0909123456">
            </div>

            <div class="col-12">
              <label for="dia_chi" class="form-label">Địa chỉ</label>
              <textarea class="form-control" id="dia_chi" name="dia_chi" rows="2" placeholder="Số nhà, đường, phường/xã, TP/Tỉnh..."></textarea>
            </div>

            <div class="col-md-6">
              <label for="vai_tro" class="form-label">Vai trò</label>
              <select class="form-select" id="vai_tro" name="vai_tro">
                <option value="khach_hang">Khách hàng</option>
                <option value="nhan_vien">Nhân viên</option>
                <option value="admin">Admin</option>
              </select>
            </div>

            <div class="col-12">
              <button type="submit" class="btn btn-success w-100">💾 Lưu người dùng</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
