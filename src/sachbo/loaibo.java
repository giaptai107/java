package sachbo;

import java.util.ArrayList;

import sachbean.loaibean;
import sachdao.loaidao;
public class loaibo {
	loaidao loai = new loaidao();
	ArrayList<loaibean> ds;
	public ArrayList<loaibean> getloai() throws Exception{
		ds = loai.getloai();
		return loai.getloai();
	}
}