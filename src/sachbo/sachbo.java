package sachbo;

import java.util.ArrayList;

import sachbean.sachbean;
import sachdao.sachdao;

public class sachbo {
	sachdao sach = new sachdao();
	ArrayList<sachbean> ds;
	public ArrayList<sachbean> getSach() throws Exception{
		ds = sach.getSach();
		return sach.getSach();
	}
	public ArrayList<sachbean> TimMaLoai(String maloai) throws Exception{
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds)
			if(s.getMaloai().equals(maloai))
				tam.add(s);
		return tam;
	}
	public ArrayList<sachbean> Tim(String key) throws Exception{
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for(sachbean s:ds)
			if(s.getTenSach().toLowerCase().trim().contains(key.toLowerCase().trim())||s.getTacGia().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(s);
		return tam;
	}
}
