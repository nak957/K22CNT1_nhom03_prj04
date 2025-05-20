<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">
  <div class="container mt-4">
    <h1 class="mb-4">Quản lý sản phẩm</h1>
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#productModal">Thêm sản phẩm</button>
    <div class="table-responsive">
      <table class="table table-bordered table-hover align-middle text-center">
        <thead class="table-light">
          <tr>
            <th>Mã</th>
            <th>Tên</th>
            <th>Mô tả</th>
            <th>Giá thuê</th>
            <th>Giá bán</th>
            <th>Tiền cọc</th>
            <th>Tồn kho</th>
            <th>Ảnh</th>
            <th>Trạng thái</th>
            <th>Ngày tạo</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Bàn gỗ cao cấp</td>
            <td>Bàn</td>
            <td>500,000</td>
            <td>2,000,000</td>
            <td>1,000,000</td>
            <td>10</td>
            <td><img src="https://via.placeholder.com/50" alt="Ảnh sản phẩm" class="img-fluid rounded" style="max-width: 50px; max-height: 50px;"></td>
            <td>Có sẵn</td>
            <td>2025-05-20</td>
            <td>
              <button class="btn btn-warning btn-sm me-1" data-bs-toggle="modal" data-bs-target="#productModal" 
                      onclick="editProduct(1, 'Bàn gỗ cao cấp', 'Bàn', 500000, 2000000, 1000000, 10, 'https://via.placeholder.com/50', 'co_san')">
                <i class="bi bi-pencil"></i> Sửa
              </button>
              <button class="btn btn-danger btn-sm" onclick="deleteProduct(1)">
                <i class="bi bi-trash"></i> Xóa
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Modal for Add/Edit Product -->
    <div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="productModalLabel">Thêm sản phẩm</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form id="productForm" action="${pageContext.request.contextPath}/admin/SaveProduct" method="post">
              <input type="hidden" id="ma_san_pham" name="ma_san_pham">
              <div class="mb-3">
                <label for="ten" class="form-label fw-medium">Tên sản phẩm</label>
                <input type="text" class="form-control" id="ten" name="ten" required>
              </div>
              <div class="mb-3">
                <label for="mo_ta" class="form-label fw-medium">Mô tả</label>
                <input type="text" class="form-control" id="mo_ta" name="mo_ta">
              </div>
              <div class="mb-3">
                <label for="gia_thue" class="form-label fw-medium">Giá thuê</label>
                <input type="number" class="form-control" id="gia_thue" name="gia_thue" step="0.01" required>
              </div>
              <div class="mb-3">
                <label for="gia_ban" class="form-label fw-medium">Giá bán</label>
                <input type="number" class="form-control" id="gia_ban" name="gia_ban" step="0.01">
              </div>
              <div class="mb-3">
                <label for="tien_coc" class="form-label fw-medium">Tiền cọc</label>
                <input type="number" class="form-control" id="tien_coc" name="tien_coc" step="0.01">
              </div>
              <div class="mb-3">
                <label for="so_luong_ton" class="form-label fw-medium">Số lượng tồn</label>
                <input type="number" class="form-control" id="so_luong_ton" name="so_luong_ton" required>
              </div>
              <div class="mb-3">
                <label for="url_anh" class="form-label fw-medium">URL ảnh</label>
                <input type="text" class="form-control" id="url_anh" name="url_anh">
              </div>
              <div class="mb-3">
                <label for="trang_thai" class="form-label fw-medium">Trạng thái</label>
                <select class="form-select" id="trang_thai" name="trang_thai">
                  <option value="co_san">Có sẵn</option>
                  <option value="het_hang">Hết hàng</option>
                  <option value="ngung_kinh_doanh">Ngừng kinh doanh</option>
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
    function editProduct(ma_san_pham, ten, mo_ta, gia_thue, gia_ban, tien_coc, so_luong_ton, url_anh, trang_thai) {
      document.getElementById('productModalLabel').textContent = 'Sửa sản phẩm';
      document.getElementById('ma_san_pham').value = ma_san_pham;
      document.getElementById('ten').value = ten;
      document.getElementById('mo_ta').value = mo_ta;
      document.getElementById('gia_thue').value = gia_thue;
      document.getElementById('gia_ban').value = gia_ban || '';
      document.getElementById('tien_coc').value = tien_coc || '';
      document.getElementById('so_luong_ton').value = so_luong_ton;
      document.getElementById('url_anh').value = url_anh || '';
      document.getElementById('trang_thai').value = trang_thai;
    }

    function deleteProduct(ma_san_pham) {
      if (confirm('Bạn có chắc muốn xóa sản phẩm này?')) {
        window.location.href = '${pageContext.request.contextPath}/admin/DeleteProduct?ma_san_pham=' + ma_san_pham;
      }
    }

    document.getElementById('productModal').addEventListener('show.bs.modal', function (event) {
      if (!event.relatedTarget.classList.contains('btn-warning')) {
        document.getElementById('productModalLabel').textContent = 'Thêm sản phẩm';
        document.getElementById('productForm').reset();
        document.getElementById('ma_san_pham').value = '';
      }
    });
  </script>
</body>
</html>