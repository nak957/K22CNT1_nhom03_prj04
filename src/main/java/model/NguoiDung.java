package model;

import java.time.LocalDateTime;

public class NguoiDung {
    private int maNguoiDung;
    private String email;
    private String matKhau;
    private String hoTen;
    private String soDienThoai;
    private String diaChi;
    private String vaiTro;
    private LocalDateTime ngayTao;
    private LocalDateTime ngayCapNhat;

    // Constructor
    public NguoiDung() {}

    public NguoiDung(String email, String matKhau, String hoTen, String soDienThoai, String diaChi, String vaiTro) {
        this.email = email;
        this.matKhau = matKhau;
        this.hoTen = hoTen;
        this.soDienThoai = soDienThoai;
        this.diaChi = diaChi;
        this.vaiTro = vaiTro;
    }

    // Getters and Setters
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

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(String vaiTro) {
        this.vaiTro = vaiTro;
    }

    public LocalDateTime getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(LocalDateTime ngayTao) {
        this.ngayTao = ngayTao;
    }

    public LocalDateTime getNgayCapNhat() {
        return ngayCapNhat;
    }

    public void setNgayCapNhat(LocalDateTime ngayCapNhat) {
        this.ngayCapNhat = ngayCapNhat;
    }
}