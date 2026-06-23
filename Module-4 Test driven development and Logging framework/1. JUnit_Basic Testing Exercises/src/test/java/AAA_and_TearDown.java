import org.example.Calculator;
import org.junit.*;
import static org.junit.Assert.*;

public class AAA_and_TearDown{
    Calculator cal;
    @Before
    public void setUp(){
        //Arrange
        cal = new Calculator();
        System.out.println("SETUP IS DONE!!");
    }
    @Test
    public void  TestAdd(){

        //Act
        int answer = cal.add(3,7);
        //Assertions
        assertEquals(10,answer);
    }
    @After
    public void tearDown(){
        //cleanup
        cal=null;
        System.out.println("TearDown is Done!!");
    }
}
