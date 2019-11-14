package sachdao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import sachbean.loaibean;

	public class loaidao {
		DungChung dc= new DungChung();
	
	public ArrayList<loaibean> getloai() throws Exception{
		
		ArrayList<loaibean> ds= new ArrayList<loaibean>();
		dc.KetNoi();//b1: ket noi vao csdl;
		//b2: lay du lieu ve
		String sql ="select * from loai";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery(); //lay du lieu ve
		while(rs.next()) {// duyet qua cac dong tren bang sach
			 String maloai = rs.getString("maloai");
			 String tenloai = rs.getString("tenloai");
			 loaibean l = new loaibean(maloai,tenloai);
			 ds.add(l);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
}
