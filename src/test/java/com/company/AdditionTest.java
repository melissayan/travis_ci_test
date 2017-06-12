package test.java.com.company;

import main.java.com.company.Addition;
import org.junit.Test;

/**
 * Created by Melissa on 6/6/2017.
 */
public class AdditionTest {

    @Test
    public void test(){
        Addition addition = new Addition();
        double a = 2.0;
        double b = 3.0;
        double result = addition.add(a, b);
        System.out.println(a + " + " + b + " = " + result);
    }

    @Test
    public void test2(){
        Addition addition = new Addition();
        double a = 1.0;
        double b = 3.0;
        double result = addition.add(a, b);
        System.out.println(a + " + " + b + " = " + result);
    }
}
