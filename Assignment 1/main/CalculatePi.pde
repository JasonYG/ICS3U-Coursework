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
    return x;
  }
  // Implementation of Chudnovsky's algorithm
  // to calculate digits of pi WITH parameter
  BigDecimal calculate(long n) {
    // FIX THIS NUMBER TO THE CONVERGENCE OF THE CHUDNOVSKY'S ALGORITHM
    int loopNumber = 1000; // The upper bound value of 'k'
    memoize = new BigDecimal[6*loopNumber];

    // Terms in the algorithm
    BigDecimal k = new BigDecimal("1");
    BigDecimal a_k = new BigDecimal(str(n));
    BigDecimal a_sum = new BigDecimal(str(n));
    BigDecimal b_sum = new BigDecimal("0");
    BigDecimal c = new BigDecimal("640320");
    
    while(true) {
      // Updates a_k
      BigDecimal a = new BigDecimal("6");
      a = a.multiply(k);
      a = a.subtract(new BigDecimal("5"));
      a.multiply(new BigDecimal("-1"));
      BigDecimal b = new BigDecimal("2");
      b = b.multiply(k);
      b = b.subtract(new BigDecimal("-1"));
      BigDecimal c = new BigDecimal()
      
    }
    
    return;
  }
  // If there is no parameter
  BigDecimal calculate() {
    return calculate(1000000);
  }
}