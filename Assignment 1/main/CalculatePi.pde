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
  BigDecimal root(BigDecimal n) {
    BigDecimal x = new BigDecimal("800").setScale(digits); // Starts 'x' off with an initial guess of 800
    int i = 0; // Trivial iterator for the loop
    // The method has a quadratic convergence of x^2 + 1,
    // where x == the number of digit places
    int bound = ceil(sqrt(digits)) + 1; 
    // Loop repeats 'bound' number of times
    while (i < bound) {
      BigDecimal a = x.pow(2); // Intermediary term
      BigDecimal f = a.subtract(n); // Function 'f'
      BigDecimal fPrime = x.multiply(new BigDecimal("2")); // Derivative of function 'f'
      BigDecimal fraction = f.divide(fPrime, digits, RoundingMode.DOWN); // f/f'
      x = x.subtract(fraction);

      i++;
    }
    return x;
  }
  // Implementation of Chudnovsky's algorithm
  // to calculate digits of pi
  BigDecimal calculate() {
    // FIX THIS NUMBER TO THE CONVERGENCE OF THE CHUDNOVSKY'S ALGORITHM
    int loopNumber = 50; // The upper bound value of 'k'
    memoize = new BigDecimal[6*loopNumber];
    BigDecimal one = new BigDecimal("1");
    BigDecimal pi = new BigDecimal("0"); // Return value of this function
    for (int k = 0; k < loopNumber; k++) {
      BigDecimal bigK = new BigDecimal(str(k)); // Changes 'k' into a BigDecimal
      BigDecimal numerator = new BigDecimal("0").setScale(digits); // Numerator of the equation
      BigDecimal denominator = new BigDecimal("0").setScale(digits); //Denominator of the equation

      // These variables are represent intermediary terms in the equation
      BigDecimal a = new BigDecimal("-1").setScale(digits);
      a = a.pow(k);

      BigDecimal b = new BigDecimal("6").setScale(digits);
      b = b.multiply(bigK);
      b = factorial(b);

      BigDecimal c = new BigDecimal("545140134").setScale(digits);
      c = c.multiply(bigK);
      c = c.add(new BigDecimal("13591409"));

      numerator = numerator.add(a);
      numerator = numerator.multiply(b);
      numerator = numerator.multiply(c);

      BigDecimal d = new BigDecimal("3").setScale(digits);
      d = d.multiply(bigK);
      d = factorial(d);

      BigDecimal e = factorial(bigK).setScale(digits);
      e.pow(3);

      BigDecimal f = new BigDecimal("640320").setScale(digits);
      int g = ((3*k) * 2) + 3;
      f = root(f);
      f = f.pow(g);

      denominator = denominator.add(d);
      denominator = denominator.multiply(e);
      denominator = denominator.multiply(f);

      BigDecimal twelve = new BigDecimal("12"); // To multiply the fraction
      BigDecimal fraction = numerator.divide(denominator, digits, RoundingMode.DOWN); // Numerator / Denominator
      BigDecimal answer = fraction.multiply(twelve); // Intermediary term

      pi = pi.add(answer);
    }
    pi = one.divide(pi, digits, RoundingMode.DOWN);
    return pi.setScale(digits, RoundingMode.DOWN);
  }
}