package DbTest.Sonmelier;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.BatchUpdateException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.regex.Pattern;

import org.dbunit.Assertion;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.DatabaseConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.csv.CsvDataSet;
import org.dbunit.ext.mysql.MySqlDataTypeFactory;
import org.junit.Assert;

public abstract class AbstractDatabaseConnection
{
	protected final String GROUND_TRUTH = "groundTruth/";
	protected final String SQL_SETUP = "sql/setup/";
	protected final String SQL_TEST = "sql/test/";
	protected String myClassName = getClass().getSimpleName();
    protected Connection connection;        
    protected IDatabaseConnection conn;
    
	public void setUp() throws Exception
	{
        Class.forName("com.mysql.jdbc.Driver");
        connection=DriverManager.getConnection(
        		"jdbc:mysql://192.168.11.60/music_list_test","takuya_hara","ventretky"
        		);        
        conn = new DatabaseConnection(connection);
        conn.getConfig().setProperty(
        		DatabaseConfig.PROPERTY_DATATYPE_FACTORY, new MySqlDataTypeFactory()
        		);
        
        // Clear database;
        initDB();
	}

	public void tearDown() throws Exception
	{
		initDB();
	}
	
	protected void execSQL(String sqlPath) throws Exception
	{
		Statement statement = connection.createStatement();
		String sqlWhole = getSQL(sqlPath + myClassName + ".sql");
		
		Pattern pattern = Pattern.compile(";\n");
		String[] sqlSplitted = pattern.split(sqlWhole);

		for(String sql:sqlSplitted)
		{
			statement.addBatch(sql + ";");
		}
		
		statement.executeBatch();
	}
	
	protected void execSQL(String sqlPath, String errorMessage) throws Exception
	{
		try
		{
			execSQL(sqlPath);
		}
		catch (BatchUpdateException bue)
		{
			Assert.assertEquals(bue.getMessage(), errorMessage);
		}
	}
	
	protected void validateTables() throws Exception
	{
		CsvDataSet expectedDataSetCSV = new CsvDataSet(new File(GROUND_TRUTH + myClassName));
		
		// Assertion
	    File file = new File(GROUND_TRUTH + myClassName + "/table-ordering.txt");
	    BufferedReader br = new BufferedReader(new FileReader(file));
	
	    String tableName;
	    while ((tableName = br.readLine()) != null)
	    {
			Assertion.assertEquals(
					expectedDataSetCSV.getTable(tableName),
					conn.createQueryTable("", "select * from `" + tableName + "`")
					);
	    }
	    br.close();
	}
    
	protected void initDB() throws Exception
	{
		Statement statement = connection.createStatement();
		statement.executeUpdate("call reset_database()");
	}
	
	protected String getSQL(String filepath) throws IOException
	{
		String sql = "";
        File file = new File(filepath);
        BufferedReader br = new BufferedReader(new FileReader(file));

        String str;
        while ((str = br.readLine()) != null) {
            sql = sql + str + System.getProperty("line.separator");
        }
        br.close();
        return sql;
	}
}
