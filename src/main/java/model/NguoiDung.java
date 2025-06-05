package model;

import java.sql.Timestamp;

public class NguoiDung {
    private int maNguoiDung;       // Đổi từ id -> maNguoiDung
    private String email;
    private String matKhau;
    private String vaiTro;
    private String hoTen;
    private Timestamp ngayTao;
    private Timestamp ngayCapNhat;

    // Constructor mặc định
    public NguoiDung() {}

    // Constructor đầy đủ
    public NguoiDung(int maNguoiDung, String email, String matKhau, String vaiTro, String hoTen, Timestamp ngayTao, Timestamp ngayCapNhat) {
        this.maNguoiDung = maNguoiDung;
        this.email = email;
        this.matKhau = matKhau;
        this.vaiTro = vaiTro;
        this.hoTen = hoTen;
        this.ngayTao = ngayTao;
        this.ngayCapNhat = ngayCapNhat;
    }

    // Constructor không có ID, dành cho insert mới
    public NguoiDung(String email, String matKhau, String vaiTro, String hoTen) {
        this.email = email;
        this.matKhau = matKhau;
        this.vaiTro = vaiTro;
        this.hoTen = hoTen;
    }

    // Getter - Setter
    public int getMaNguoiDung() {
        return maNguoiDung;
    }

    public void setMaNguoiDung(int maNguoiDung) {
        this.maNguoiDung = maNguoiDung;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(String vaiTro) {
        this.vaiTro = vaiTro;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Timestamp getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Timestamp ngayTao) {
        this.ngayTao = ngayTao;
    }

    public Timestamp getNgayCapNhat() {
        return ngayCapNhat;
    }

    public void setNgayCapNhat(Timestamp ngayCapNhat) {
        this.ngayCapNhat = ngayCapNhat;
    }
}
