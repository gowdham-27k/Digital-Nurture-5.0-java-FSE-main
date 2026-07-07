import org.junit.*;
import static org.junit.Assert.*;

public class AssertionsTest {
    @Test
    public void testAssertion(){
        assertEquals(5,2+3);
        assertFalse(5>10);
        assertTrue(10>5);
        assertNotNull(new Object());
        assertNull(null);
    }
}
