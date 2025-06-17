package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import config.DBConnection;
import model.NguoiDung;

public class NguoiDungDAO {

    // Kiểm tra đăng nhập
    public NguoiDung checkLogin(String email, String matKhau) {
        NguoiDung user = null;
        String sql = "SELECT * FROM nguoidung WHERE email=? AND mat_khau=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, email);
            stmt.setString(2, matKhau);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new NguoiDung();
                user.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                user.setEmail(rs.getString("email"));
                user.setMatKhau(rs.getString("mat_khau"));
                user.setVaiTro(rs.getString("vai_tro"));
                user.setHoTen(rs.getString("ho_ten"));
                user.setSoDienThoai(rs.getString("so_dien_thoai"));
                user.setNgayTao(rs.getTimestamp("ngay_tao"));
                user.setNgayCapNhat(rs.getTimestamp("ngay_cap_nhat"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Lấy thông tin theo email
    public NguoiDung getByEmail(String email) {
        NguoiDung user = null;
        String sql = "SELECT * FROM nguoidung WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new NguoiDung();
                user.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                user.setEmail(rs.getString("email"));
                user.setMatKhau(rs.getString("mat_khau"));
                user.setVaiTro(rs.getString("vai_tro"));
                user.setHoTen(rs.getString("ho_ten"));
                user.setSoDienThoai(rs.getString("so_dien_thoai"));
                user.setNgayTao(rs.getTimestamp("ngay_tao"));
                user.setNgayCapNhat(rs.getTimestamp("ngay_cap_nhat"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Cập nhật thông tin người dùng
    public void updateUser(NguoiDung user) {
        String sql = "UPDATE nguoidung SET mat_khau = ?, ho_ten = ?, vai_tro = ?, ngay_cap_nhat = CURRENT_TIMESTAMP WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, user.getMatKhau());
            stmt.setString(2, user.getHoTen());
            stmt.setString(3, user.getVaiTro());
            stmt.setString(4, user.getEmail());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Lấy tất cả người dùng
    public List<NguoiDung> getAllUsers() {
        List<NguoiDung> list = new ArrayList<>();
        String sql = "SELECT * FROM nguoidung";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
             
            while (rs.next()) {
                NguoiDung user = new NguoiDung();
                user.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                user.setEmail(rs.getString("email"));
                user.setMatKhau(rs.getString("mat_khau"));
                user.setVaiTro(rs.getString("vai_tro"));
                user.setHoTen(rs.getString("ho_ten"));
                user.setSoDienThoai(rs.getString("so_dien_thoai"));
                user.setNgayTao(rs.getTimestamp("ngay_tao"));
                user.setNgayCapNhat(rs.getTimestamp("ngay_cap_nhat"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy người dùng theo mã
    public NguoiDung getById(int maNguoiDung) {
        NguoiDung user = null;
        String sql = "SELECT * FROM nguoidung WHERE ma_nguoi_dung = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setInt(1, maNguoiDung);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new NguoiDung();
                user.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                user.setEmail(rs.getString("email"));
                user.setMatKhau(rs.getString("mat_khau"));
                user.setVaiTro(rs.getString("vai_tro"));
                user.setHoTen(rs.getString("ho_ten"));
                user.setSoDienThoai(rs.getString("so_dien_thoai"));
                user.setNgayTao(rs.getTimestamp("ngay_tao"));
                user.setNgayCapNhat(rs.getTimestamp("ngay_cap_nhat"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Thêm người dùng mới
    public void insertUser(NguoiDung user) {
        String sql = "INSERT INTO nguoidung (email, mat_khau, vai_tro, ho_ten, so_dien_thoai, ngay_tao, ngay_cap_nhat) VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getMatKhau());
            stmt.setString(3, user.getVaiTro());
            stmt.setString(4, user.getHoTen());
            stmt.setString(5, user.getSoDienThoai());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Xóa người dùng
    public void deleteUser(int maNguoiDung) {
        String sql = "DELETE FROM nguoidung WHERE ma_nguoi_dung = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setInt(1, maNguoiDung);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
