package sachbean;

import java.sql.Date;

public class sachbean {
	private String maSach;
	private String tenSach;
	private String tacGia;
	private long gia;
	private String anh;
	private Date ngaynhap;
	private String maloai;
	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sachbean(String maSach, String tenSach, String tacGia, long gia, String anh, Date ngaynhap, String maloai) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.tacGia = tacGia;
		this.gia = gia;
		this.anh = anh;
		this.ngaynhap = ngaynhap;
		this.maloai = maloai;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	
}
