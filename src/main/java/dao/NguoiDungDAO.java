package dao;

import config.DBConnection;
import model.NguoiDung;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NguoiDungDAO {
    private Connection connection;

    public NguoiDungDAO() {
        this.connection = DBConnection.getConnection();
    }

    // Đăng ký người dùng
    public boolean dangKy(NguoiDung nguoiDung) {
        String sql = "INSERT INTO NguoiDung (email, mat_khau, ho_ten, so_dien_thoai, dia_chi, vai_tro) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, nguoiDung.getEmail());
            stmt.setString(2, nguoiDung.getMatKhau());
            // ho_ten là NOT NULL, cần gán giá trị mặc định nếu null
            stmt.setString(3, nguoiDung.getHoTen() != null ? nguoiDung.getHoTen() : "Khách hàng");
            stmt.setString(4, nguoiDung.getSoDienThoai());
            stmt.setString(5, nguoiDung.getDiaChi());
            stmt.setString(6, nguoiDung.getVaiTro());
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi đăng ký người dùng: " + e.getMessage());
            return false;
        }
    }

    // Đăng nhập
    public NguoiDung dangNhap(String email, String matKhau) {
        String sql = "SELECT * FROM NguoiDung WHERE email = ? AND mat_khau = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, matKhau);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                NguoiDung nguoiDung = new NguoiDung(
                    rs.getString("email"),
                    rs.getString("mat_khau"),
                    rs.getString("ho_ten"),
                    rs.getString("so_dien_thoai"),
                    rs.getString("dia_chi"),
                    rs.getString("vai_tro")
                );
                nguoiDung.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                return nguoiDung;
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi đăng nhập: " + e.getMessage());
        }
        return null;
    }

    // Lấy thông tin người dùng theo ID
    public NguoiDung getNguoiDungById(int maNguoiDung) {
        String sql = "SELECT * FROM NguoiDung WHERE ma_nguoi_dung = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, maNguoiDung);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                NguoiDung nguoiDung = new NguoiDung(
                    rs.getString("email"),
                    rs.getString("mat_khau"),
                    rs.getString("ho_ten"),
                    rs.getString("so_dien_thoai"),
                    rs.getString("dia_chi"),
                    rs.getString("vai_tro")
                );
                nguoiDung.setMaNguoiDung(rs.getInt("ma_nguoi_dung"));
                return nguoiDung;
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy thông tin người dùng: " + e.getMessage());
        }
        return null;
    }

    // Cập nhật thông tin người dùng
    public boolean capNhatNguoiDung(NguoiDung nguoiDung) {
        String sql = "UPDATE NguoiDung SET email = ?, mat_khau = ?, ho_ten = ?, so_dien_thoai = ?, dia_chi = ?, vai_tro = ? WHERE ma_nguoi_dung = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, nguoiDung.getEmail());
            stmt.setString(2, nguoiDung.getMatKhau());
            stmt.setString(3, nguoiDung.getHoTen());
            stmt.setString(4, nguoiDung.getSoDienThoai());
            stmt.setString(5, nguoiDung.getDiaChi());
            stmt.setString(6, nguoiDung.getVaiTro());
            stmt.setInt(7, nguoiDung.getMaNguoiDung());
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi cập nhật người dùng: " + e.getMessage());
            return false;
        }
    }

    // Xóa người dùng
    public boolean xoaNguoiDung(int maNguoiDung) {
        String sql = "DELETE FROM NguoiDung WHERE ma_nguoi_dung = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, maNguoiDung);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi xóa người dùng: " + e.getMessage());
            return false;
        }
    }
}