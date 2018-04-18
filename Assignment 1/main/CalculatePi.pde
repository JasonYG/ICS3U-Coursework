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
  // Method to write to text file,
  // takes in BigDecimal as argument
  void toText(BigDecimal n) {
    PrintWriter file = createWriter("pi.txt");
    file.println(n);
    file.close();
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
    BigDecimal x = new BigDecimal("100").setScale(digits*2); // Starts 'x' off with an initial guess of 100
    int i = 0; // Trivial iterator for the loop
    
    // The method has a quadratic convergence of x^2 + 1,
    // where x == the number of digit places
    int bound = ceil(sqrt(digits)) + 1; 
    //int bound = digits;
    
    // Loop repeats 'bound' number of times
    while (i < bound) {
      BigDecimal a = x.pow(2); // Intermediary term
      BigDecimal f = a.subtract(n); // Function 'f'
      BigDecimal fPrime = x.multiply(new BigDecimal("2")); // Derivative of function 'f'
      BigDecimal fraction = f.divide(fPrime, digits, RoundingMode.DOWN); // f/f'
      x = x.subtract(fraction);

      i++;
    }
    //println(x);
    return x;
  }
  // Implementation of Chudnovsky's algorithm
  // to calculate digits of pi
  BigDecimal calculate() {
    // FIX THIS NUMBER TO THE CONVERGENCE OF THE CHUDNOVSKY'S ALGORITHM
    int loopNumber = 10000; // The upper bound value of 'k'
    memoize = new BigDecimal[6*loopNumber];
    //BigDecimal one = new BigDecimal("1"); // BigDecimal of 1
    BigDecimal pi = new BigDecimal("0"); // Return value of this function
    
    // Constant term in the series
    BigDecimal c = new BigDecimal("426880");
    BigDecimal a = new BigDecimal("10005");
    a = root(a);
    c = c.multiply(a);
    
    // bigSum represents the summation of the terms in the algorithm
    BigDecimal bigSum = new BigDecimal("0");
    
    for (int k = 0; k < loopNumber; k++) {
      BigDecimal bigK = new BigDecimal(str(k)); // Changes 'k' into a BigDecimal
      
      // Terms in the series
      BigDecimal m = new BigDecimal("0");
      BigDecimal l = new BigDecimal("13591409");
      BigDecimal x = new BigDecimal("-262537412640768000");
      
      BigDecimal b = new BigDecimal("6");
      b = b.multiply(factorial(bigK));
      BigDecimal d = new BigDecimal("3");
      d = d.multiply(bigK);
      d = factorial(d);
      BigDecimal e = factorial(bigK);
      e = e.pow(3);
      BigDecimal f = d.multiply(e);
      m = m.add(b);
      m = m.divide(f, digits, RoundingMode.DOWN);
      
      BigDecimal g = new BigDecimal("545140134");
      g = g.multiply(bigK);
      l = l.add(g);
  

      x = x.pow(k);
      // Entire fraction, (m*l)/x
      BigDecimal fraction = m;
      fraction = fraction.multiply(l);
      fraction = fraction.divide(x, digits, RoundingMode.DOWN);

      bigSum = bigSum.add(fraction);
    }
    BigDecimal sixthPi = c.divide(bigSum, digits, RoundingMode.DOWN);
    pi = sixthPi.multiply(new BigDecimal("6"));
    return pi;
  }
}