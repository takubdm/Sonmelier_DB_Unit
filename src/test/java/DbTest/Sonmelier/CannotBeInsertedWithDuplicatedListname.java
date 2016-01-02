package DbTest.Sonmelier;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class CannotBeInsertedWithDuplicatedListname extends AbstractDatabaseConnection
{	
	@Before
	public void setUp() throws Exception
	{
		super.setUp();
	}

	@After
	public void tearDown() throws Exception
	{
		super.tearDown();
	}

	@Test
	public void test() throws Exception
	{
		super.execSQL(SQL_TEST, "Specified listname \"Children of Bodom\" already exists.");
	}
}
