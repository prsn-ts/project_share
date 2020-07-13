package test.util;
/*
 *  [Data Base Connection Pool Bean ]
 *  
 *  �Ʒ��� Ŭ������ ���� �Ϸ���
 *  
 *  1. Servers/context.xml ������ DB ���� ������ �־�� �Ѵ�.
 *  
 *  <Resource name="jdbc/myoracle" auth="Container"
              type="javax.sql.DataSource" driverClassName="oracle.jdbc.OracleDriver"
              url="jdbc:oracle:thin:@localhost:1521:xe"
              username="scott" password="tiger" maxTotal="20" maxIdle="10"
              maxWaitMillis="-1"/>
    2. ������Ʈ�� WEB-INF/web.xml ������ �Ʒ��� ������ �־�� �Ѵ�.
    <resource-ref>
		<description>Oracle Datasource example</description>
		<res-ref-name>jdbc/myoracle</res-ref-name>
		<res-type>javax.sql.DataSource</res-type>
		<res-auth>Container</res-auth>
	</resource-ref>
	
	3.  WEB-INF/lib/ ������ ojdbc6.jar ������ �־ ���̺귯���� ����� �غ� �ؾ��Ѵ�.
	
	���� 3���� ������ �� �Ŀ�
	
	- new DbcpBean().getConn() �޼ҵ带 ȣ���ϸ� Connection Pool ����
	Connection ��ü�� �ϳ� ���ϵȴ�.
	
	- Dao ���� Connection ��ü�� ����� �� .close() �޼ҵ带 ȣ���ϸ�
	�ڵ����� Connection Pool �� Connection ��ü�� ��ȯ�ȴ�.
 */

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbcpBean {
	private Connection conn;
	public DbcpBean() {
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public Connection getConn() {
		return conn;
	}
}
