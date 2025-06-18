package dao;

import java.sql.*;
import java.util.*;
import model.SanPham;
import config.DBConnection;

public class SanPhamDAO {
    public List<SanPham> danhSachSanPham() {
        List<SanPham> ds = new ArrayList<>();
        String sql = "SELECT * FROM SanPham ORDER BY ngay_tao DESC";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                SanPham sp = new SanPham();
                sp.setMaSanPham(rs.getInt("ma_san_pham"));
                sp.setTen(rs.getString("ten"));
                sp.setMoTa(rs.getString("mo_ta"));
                sp.setMaDanhMuc(rs.getInt("ma_danh_muc"));
                sp.setGiaThue(rs.getDouble("gia_thue"));
                sp.setGiaBan(rs.getDouble("gia_ban"));
                sp.setTienCoc(rs.getDouble("tien_coc"));
                sp.setSoLuongTon(rs.getInt("so_luong_ton"));
                sp.setUrlAnh(rs.getString("url_anh"));
                sp.setTrangThai(rs.getString("trang_thai"));
                sp.setNgayTao(rs.getTimestamp("ngay_tao"));
                ds.add(sp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ds;
    }

    public SanPham getById(int id) {
        String sql = "SELECT * FROM SanPham WHERE ma_san_pham = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    SanPham sp = new SanPham();
                    sp.setMaSanPham(rs.getInt("ma_san_pham"));
                    sp.setTen(rs.getString("ten"));
                    sp.setMoTa(rs.getString("mo_ta"));
                    sp.setMaDanhMuc(rs.getInt("ma_danh_muc"));
                    sp.setGiaThue(rs.getDouble("gia_thue"));
                    sp.setGiaBan(rs.getDouble("gia_ban"));
                    sp.setTienCoc(rs.getDouble("tien_coc"));
                    sp.setSoLuongTon(rs.getInt("so_luong_ton"));
                    sp.setUrlAnh(rs.getString("url_anh"));
                    sp.setTrangThai(rs.getString("trang_thai"));
                    sp.setNgayTao(rs.getTimestamp("ngay_tao"));
                    return sp;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insert(SanPham sp) {
        String sql = "INSERT INTO SanPham(ten, mo_ta, ma_danh_muc, gia_thue, gia_ban, tien_coc, so_luong_ton, url_anh, trang_thai) VALUES (?,?,?,?,?,?,?,?,?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, sp.getTen());
            ps.setString(2, sp.getMoTa());
            ps.setInt(3, sp.getMaDanhMuc());
            ps.setDouble(4, sp.getGiaThue());
            ps.setDouble(5, sp.getGiaBan());
            ps.setDouble(6, sp.getTienCoc());
            ps.setInt(7, sp.getSoLuongTon());
            ps.setString(8, sp.getUrlAnh());
            ps.setString(9, sp.getTrangThai());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(SanPham sp) {
        String sql = "UPDATE SanPham SET ten=?, mo_ta=?, ma_danh_muc=?, gia_thue=?, gia_ban=?, tien_coc=?, so_luong_ton=?, url_anh=?, trang_thai=? WHERE ma_san_pham=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, sp.getTen());
            ps.setString(2, sp.getMoTa());
            ps.setInt(3, sp.getMaDanhMuc());
            ps.setDouble(4, sp.getGiaThue());
            ps.setDouble(5, sp.getGiaBan());
            ps.setDouble(6, sp.getTienCoc());
            ps.setInt(7, sp.getSoLuongTon());
            ps.setString(8, sp.getUrlAnh());
            ps.setString(9, sp.getTrangThai());
            ps.setInt(10, sp.getMaSanPham());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(int id) {
        String sql = "DELETE FROM SanPham WHERE ma_san_pham=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
