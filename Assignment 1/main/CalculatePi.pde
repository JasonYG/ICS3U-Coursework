import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/**
 * This class calculates the digits of pi
 *
 * @author Jason Guo
 * @since May 1, 2018
 * @version 1.0 
 */
class Pi {
  boolean calculated = false; // Prevents PI from being repeatedly calculated
  private int precision = 100; // Used for the square root method and floating point arithmetic

  /**
   * Method that computes the square root of a number
   *
   * This method uses Newton's method for calculating the square root of a number.
   * The algorithm has a quadratic convergence of x^2 + 1, where x represents the
   * number of digits we want to compute
   *
   * @param n the BigDecimal object that we want to square root
   * @return The resultant of the square root calculation
   */
  BigDecimal root(BigDecimal n) {
    BigDecimal x = new BigDecimal("100").setScale(precision); // Starts 'x' off with an initial guess of 100
    int i = 0; // Trivial iterator for the loop

    // The method has a quadratic convergence of x^2 + 1,
    // where x == the number of digit places
    int bound = ceil(sqrt(precision)) + 1; 

    // Loop repeats 'bound' number of times
    while (i < bound) {
      BigDecimal a = x.pow(2); // Intermediary term
      BigDecimal f = a.subtract(n); // Function 'f'
      BigDecimal fPrime = x.multiply(new BigDecimal("2")); // Derivative of function 'f'
      BigDecimal fraction = f.divide(fPrime, precision, RoundingMode.DOWN); // f/f'
      x = x.subtract(fraction);

      i++;
    }
    return x;
  }

  /**
   * Method that computes the square root of a number using floating point arithmetic
   * 
   * @param n the BigDecimal object that we want to square root
   * @param one the fixed point that is used to square root n
   * @return The square root of n as a fixed point number with the one 
   */
  BigDecimal root(BigDecimal n, BigDecimal one) {
    // Floating point arithmetic to make initial guess
    BigDecimal floatingPoint = new BigDecimal("10");
    floatingPoint = floatingPoint.pow(16);

    // Floating point calculations of n
    BigDecimal a = n.multiply(floatingPoint);
    BigDecimal b = a.divide(one, 0, RoundingMode.FLOOR);
    BigDecimal nFloat = b.divide(floatingPoint, precision, RoundingMode.DOWN);

    // 'x' is the return value of the method
    BigDecimal j = floatingPoint.multiply(root(nFloat));
    BigDecimal d = j.multiply(one);
    BigDecimal x = d.divide(floatingPoint, 0, RoundingMode.FLOOR);
    BigDecimal nOne = n.multiply(one);

    while (true) {
      // Updates x
      BigDecimal oldX = x;
      BigDecimal e = nOne.divide(x, 0, RoundingMode.FLOOR);
      e = e.add(x);
      x = e.divide(new BigDecimal("2"), 0, RoundingMode.FLOOR);

      // Exit condition .compareTo returns 0 if
      // the objects are equal in value
      if (x.compareTo(oldX) == 0) {
        break;
      }
    }
    return x;
  }

  /**
   * Implementation of Chudnovsky's algorithm
   *
   * @param n the number of digits to calculate to
   * @uses calculate()
   * @return pi to n digits
   */
  BigDecimal calculate(BigInteger n) {
    // FIX THIS NUMBER TO THE CONVERGENCE OF THE CHUDNOVSKY'S ALGORITHM
    BigDecimal bigN = new BigDecimal(n);
    // Terms in the algorithm
    BigDecimal k = new BigDecimal("1");
    BigDecimal aK = bigN;
    BigDecimal aSum = bigN;
    BigDecimal bSum = new BigDecimal("0");
    BigDecimal c = new BigDecimal("640320");

    while (true) {
      // Updates aK
      BigDecimal a = new BigDecimal("6");
      a = a.multiply(k);
      a = a.subtract(new BigDecimal("5"));
      BigDecimal b = new BigDecimal("2");
      b = b.multiply(k);
      b = b.subtract(new BigDecimal("1"));
      BigDecimal d = new BigDecimal("6");
      d = d.multiply(k);
      d = d.subtract(new BigDecimal("1"));
      aK = aK.multiply(a);
      aK = aK.multiply(b);
      aK = aK.multiply(d);
      aK = aK.multiply(new BigDecimal("-1"));

      BigDecimal e = k.pow(3);
      e = e.multiply(c.pow(3).divide(new BigDecimal("24")));
      aK = aK.divide(e, 0, RoundingMode.FLOOR);

      // Updates aSum
      aSum = aSum.add(aK);

      // Updates bSum
      bSum = bSum.add(k.multiply(aK));

      // Updates k
      k = k.add(new BigDecimal("1"));

      // Exit condition
      if (aK.intValue() == 0) {
        break;
      }
    }
    // Finishes equation
    BigDecimal f = new BigDecimal("13591409");
    f = f.multiply(aSum);
    BigDecimal g = new BigDecimal("545140134");
    g = g.multiply(bSum);
    BigDecimal total = f.add(g);

    BigDecimal h = new BigDecimal("426880");
    BigDecimal i = new BigDecimal("10005");
    i = root(i.multiply(bigN), bigN);
    i = i.multiply(bigN);
    BigDecimal j = h.multiply(i);
    BigDecimal pi = j.divide(total, 0, RoundingMode.FLOOR); 

    calculated = true;
    toFile(pi);
    return pi;
  }

  /**
   * Default implementation of Chudnovsky's algorithm 
   *
   * @uses calculate(BigDecimal)
   * @return BigDecimal
   */
  BigDecimal calculate() {
    // Default argument of function
    BigInteger defArg = new BigInteger("10");
    defArg = defArg.pow(1000000);
    return calculate(defArg);
  }
  /**
   * Method used to write the digits of pi to a text file
   */
  void toFile(BigDecimal n) {
    PrintWriter file = createWriter("pi.txt");
    file.println(n);
    file.flush();
    file.close();
  }
}