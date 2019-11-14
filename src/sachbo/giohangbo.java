package sachbo;

import java.util.ArrayList;

import sachbean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds=new ArrayList<giohangbean>();
	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
		for(giohangbean g:ds) {
			if(g.getMasach().equals(masach)) {
				g.setSoluong(g.getSoluong()+soluong);
				g.setThanhtien();
				return;
			}
		}
		giohangbean gh = new giohangbean(masach,tensach,tacgia,gia,soluong);
		ds.add(gh);
	}
	public void Xoa(String masach) {
		for(giohangbean g:ds) {
			if(g.getMasach().equals(masach)) {
				ds.remove(g);
				return;
			}
		}
	}
	public long TinhTong() {
		long s=0;
		for(giohangbean g:ds)
			s+=g.getThanhtien();
		return s;
	}
}
