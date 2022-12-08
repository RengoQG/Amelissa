package Config;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {

    public SQLServerDataSource Conectar() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        SQLServerDataSource ds = new SQLServerDataSource();
        ds.setServerName("localhost");
        ds.setDatabaseName("amelissa");
        ds.setPassword("johanqg56");
        ds.setUser("sa");
        ds.setPortNumber(1433);
        return ds;
        
    }
}
