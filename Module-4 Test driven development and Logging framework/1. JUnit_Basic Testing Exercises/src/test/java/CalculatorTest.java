import org.example.Calculator;
import org.junit.Test;
import static org.junit.Assert.*;

public class CalculatorTest {

    @Test
    public void testAdd(){
        Calculator cal = new Calculator();
        int result = cal.add(2,3);
        assertEquals(5,result);
    }

    @Test
    public void testMultiply(){
        Calculator cal = new Calculator(); //--> Arrange
        int result = cal.multiply(2,4); //--> Act
        assertEquals(8,result); //--> Assert
    }

    @Test
    public void testSubtract(){
        Calculator cal = new Calculator();
        int result = cal.subtract(10,5);
        assertEquals(5,result);
    }
}