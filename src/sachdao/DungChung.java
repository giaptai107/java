package sachdao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//b1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac dinh HQTCSDL");
		String url="jdbc:sqlserver://DESKTOP-LAD0NQP:1433;databaseName=qlsach;user=sa; password=123";
		cn=DriverManager.getConnection(url);
		System.out.print("Da ket noi");
	}
	
}
	