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
  // of a number
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
  BigDecimal calculate() {
    int loopNumber = 1; // The upper bound value of 'k'
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
      f.pow(3*k + 3/2);
      
      denominator = denominator.add(d);
      denominator = denominator.multiply(e);
      denominator = denominator.multiply(f);
      
      BigDecimal twelve = new BigDecimal("12"); // To multiply the fraction
      BigDecimal fraction = new BigDecimal("1").setScale(digits, RoundingMode.UP);
      fraction = numerator.divide(denominator, digits, RoundingMode.DOWN); // Numerator / Denominator
      BigDecimal answer = fraction.multiply(twelve); // Intermediary term
      answer = one.divide(answer, digits, RoundingMode.DOWN).setScale(digits);
    
      pi = pi.add(answer);
    }
    println(pi);
    return pi;
  }
}