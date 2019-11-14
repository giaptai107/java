package sachdao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import sachbean.sachbean;

public class sachdao {
	DungChung dc= new DungChung();
	
	public ArrayList<sachbean> getSach() throws Exception{
		
		ArrayList<sachbean> ds= new ArrayList<sachbean>();
		/*ds.add(new sachbean("01","Doraemon","Tac gia A",50000,"1.jpg"));
		ds.add(new sachbean("02","Detective Conan","Tac gia B",50000,"2.jpg"));
		ds.add(new sachbean("03","Dragon Ball","Tac gia C",50000,"3.jpg"));
		ds.add(new sachbean("04","Onepunch Man","Tac gia D",50000,"4.jpg"));
		ds.add(new sachbean("05","Naruto","Tac gia E",50000,"5.jpg"));
		return ds;*/ 
		
		dc.KetNoi();//b1: ket noi vao csdl;
		//b2: lay du lieu ve
		String sql ="select * from sach";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery(); //lay du lieu ve
		while(rs.next()) {// duyet qua cac dong tren bang sach
			 String maSach = rs.getString("masach");
			 String tenSach = rs.getString("tensach");
			 String tacGia = rs.getString("tacgia");
			 long gia = rs.getLong("gia");
			 String anh = rs.getString("anh");
			 Date ngaynhap = rs.getDate("NgayNhap");
			 String maloai = rs.getString("maloai");
			 sachbean s= new sachbean(maSach, tenSach, tacGia, gia, anh, ngaynhap, maloai);
			 ds.add(s);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
