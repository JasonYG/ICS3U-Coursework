import java.math.BigDecimal;
import java.math.BigInteger;

class Pi {
  int digits; //digits of pi
  BigInteger[] memoize; //used for factorial function
  
  // Constructor defined with an argument 
  // that defines the number of digits of PI
  Pi(int n) {
    digits = n;
    memoize = new BigInteger[n];
  }
  BigInteger factorial(BigInteger n) {
    BigInteger one = new BigInteger("1"); // Create the BigInt value of 1
    int index = n.intValue(); // Changes 'n' from a BigInt to an int
    //Base case, if n is 1 then return 1
    if (n == one) {
      return one;
    }
    
    // Checks if the answer has already been calculated
    if (memoize[index] != null) {
      return memoize[index];  
    }
    BigInteger previousInt = n.subtract(one);
    
    BigInteger answer = n.multiply(factorial(previousInt)); //
    memoize[index] = answer; // Assigns the answer value to the 'memoize' array
    return answer;
  }
  
}