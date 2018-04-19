import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

class Pi {
  int digits; //digits of pi
  BigDecimal[] memoize; //used for factorial function

  // Constructor defined with an argument 
  // that defines the number of digits of PI
  Pi(int n) {
    digits = n;
    memoize = new BigDecimal[201];
  }
  // Method used to compute the factorial
  // of a BigDecimal
  BigDecimal factorial(BigDecimal n) {
    BigDecimal one = new BigDecimal("1"); // Create the BigInt value of 1
    int index = n.intValue(); // Changes 'n' from a BigInt to an int

    //Base case, if n is 1 or 0 then return 1
    if (index == 1 || index == 0) {
      return one;
    }
    // Checks if the answer has already been calculated
    if (memoize[index] != null) {
      return memoize[index];
    }
    BigDecimal previousNum = n.subtract(one);

    BigDecimal answer = n.multiply(factorial(previousNum)); //
    memoize[index] = answer; // Assigns the answer value to the 'memoize' array
    return answer;
  }
  // Method used to compute the square root
  // of a BigDecimal using Newton's method
  BigDecimal root(BigDecimal n, BigDecimal one) {
    // Floating point arithmetic to make initial guess
    BigDecimal floatingPoint = new BigDecimal(str(pow(10, 16)));
    
    // Floating point calculations of n
    BigDecimal a = n.multiply(floatingPoint);
    BigDecimal b = a.divide(one, 0, RoundingMode.FLOOR);
    BigDecimal nFloat = b.divide(floatingPoint, digits, RoundingMode.DOWN);
    
    // 'x' is the return value of the method
    BigDecimal d = floatingPoint.multiply(root(nFloat)).setScale(0);
  }
  // Implementation of Chudnovsky's algorithm
  // to calculate digits of pi WITH parameter
  BigDecimal calculate(long n) {
    // FIX THIS NUMBER TO THE CONVERGENCE OF THE CHUDNOVSKY'S ALGORITHM
    int loopNumber = 1000; // The upper bound value of 'k'
    memoize = new BigDecimal[6*loopNumber];
    BigDecimal bigN = new BigDecimal(str(n));
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
      //a.multiply(new BigDecimal("-1"));
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
    i = root(i);
    BigDecimal j = h.multiply(i);
    BigDecimal pi = j.divide(total, 0, RoundingMode.FLOOR); 
    
    return pi;
  }
  // If there is no parameter
  BigDecimal calculate() {
    return calculate(1000000);
  }
}