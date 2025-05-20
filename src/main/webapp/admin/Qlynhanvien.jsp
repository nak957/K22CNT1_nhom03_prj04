<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container mt-4">
  <h2 class="mb-4">Quản lý nhân viên</h2>
  <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#employeeModal">Thêm nhân viên</button>
  <table class="table table-bordered table-hover align-middle text-center">
    <thead class="table-light">
      <tr>
        <th>Mã nhân viên</th>
        <th>Họ tên</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Vai trò</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
      </tr>
    </thead>
    <tbody>
      <!-- Sample data (replace with dynamic data using JSTL or servlet) -->
      <tr>
        <td>1</td>
        <td>Trần Thị Bích Ngọc</td>
        <td>0912345678</td>
        <td>ngoc.tran@example.com</td>
        <td>456 Đường Nguyễn Huệ, TP.HCM</td>
        <td>Nhân viên bán hàng</td>
        <td>Đang hoạt động</td>
        <td>
          <button class="btn btn-warning btn-sm me-1" data-bs-toggle="modal" data-bs-target="#employeeModal" 
                  onclick="editEmployee(1, 'Trần Thị Bích Ngọc', '0912345678', 'ngoc.tran@example.com', '456 Đường Nguyễn Huệ, TP.HCM', 'Nhan vien ban hang', 'Dang hoat dong')">
            <i class="bi bi-pencil"></i> Sửa
          </button>
          <button class="btn btn-danger btn-sm" onclick="deleteEmployee(1)">
            <i class="bi bi-trash"></i> Xóa
          </button>
        </td>
      </tr>
    </tbody>
  </table>

  <!-- Modal for Add/Edit Employee -->
  <div class="modal fade" id="employeeModal" tabindex="-1" aria-labelledby="employeeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="employeeModalLabel">Thêm nhân viên</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="employeeForm" action="${pageContext.request.contextPath}/admin/SaveEmployee" method="post">
            <input type="hidden" id="ma_nhan_vien" name="ma_nhan_vien">
            <div class="mb-3">
              <label for="ho_ten" class="form-label fw-medium">Họ tên</label>
              <input type="text" class="form-control" id="ho_ten" name="ho_ten" required>
            </div>
            <div class="mb-3">
              <label for="so_dien_thoai" class="form-label fw-medium">Số điện thoại</label>
              <input type="text" class="form-control" id="so_dien_thoai" name="so_dien_thoai">
            </div>
            <div class="mb-3">
              <label for="email" class="form-label fw-medium">Email</label>
              <input type="email" class="form-control" id="email" name="email">
            </div>
            <div class="mb-3">
              <label for="dia_chi" class="form-label fw-medium">Địa chỉ</label>
              <textarea class="form-control" id="dia_chi" name="dia_chi" rows="3"></textarea>
            </div>
            <div class="mb-3">
              <label for="vai_tro" class="form-label fw-medium">Vai trò</label>
              <select class="form-select" id="vai_tro" name="vai_tro">
                <option value="Nhan vien ban hang">Nhân viên bán hàng</option>
                <option value="Nhan vien kho">Nhân viên kho</option>
                <option value="Quan ly">Quản lý</option>
              </select>
            </div>
            <div class="mb-3">
              <label for="trang_thai" class="form-label fw-medium">Trạng thái</label>
              <select class="form-select" id="trang_thai" name="trang_thai">
                <option value="Dang hoat dong">Đang hoạt động</option>
                <option value="Da nghi viec">Đã nghỉ việc</option>
                <option value="Tam nghi">Tạm nghỉ</option>
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
  function editEmployee(ma_nhan_vien, ho_ten, so_dien_thoai, email, dia_chi, vai_tro, trang_thai) {
    document.getElementById('employeeModalLabel').textContent = 'Sửa nhân viên';
    document.getElementById('ma_nhan_vien').value = ma_nhan_vien;
    document.getElementById('ho_ten').value = ho_ten;
    document.getElementById('so_dien_thoai').value = so_dien_thoai || '';
    document.getElementById('email').value = email || '';
    document.getElementById('dia_chi').value = dia_chi || '';
    document.getElementById('vai_tro').value = vai_tro;
    document.getElementById('trang_thai').value = trang_thai;
  }

  function deleteEmployee(ma_nhan_vien) {
    if (confirm('Bạn có chắc muốn xóa nhân viên này?')) {
      window.location.href = '${pageContext.request.contextPath}/admin/DeleteEmployee?ma_nhan_vien=' + ma_nhan_vien;
    }
  }

  document.getElementById('employeeModal').addEventListener('show.bs.modal', function (event) {
    if (!event.relatedTarget.classList.contains('btn-warning')) {
      document.getElementById('employeeModalLabel').textContent = 'Thêm nhân viên';
      document.getElementById('employeeForm').reset();
      document.getElementById('ma_nhan_vien').value = '';
    }
  });
</script>