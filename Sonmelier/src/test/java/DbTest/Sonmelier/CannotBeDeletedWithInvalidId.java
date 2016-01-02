package DbTest.Sonmelier;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class CannotBeDeletedWithInvalidId extends AbstractDatabaseConnection
{	
	@Before
	public void setUp() throws Exception
	{
		super.setUp();
		super.execSQL(SQL_SETUP);
	}

	@After
	public void tearDown() throws Exception
	{
		super.tearDown();
	}

	@Test
	public void test() throws Exception
	{
		super.execSQL(SQL_TEST, "Specified list (ID=3) does not exist.");
	}
}
