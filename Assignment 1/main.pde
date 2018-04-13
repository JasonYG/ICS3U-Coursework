import java.math.BigDecimal;
import java.math.BigInteger;
// useful information: http://voidexception.weebly.com/java-bigdecimal---dealing-with-high-precision-calculations.html
void settings() {
}

double calculate_pi() {
  BigDecimal pi = new BigDecimal("0");
  for (int k = 0; k < 10; k++) {
    BigInteger big_int_k = new BigInteger(str(k));
    BigDecimal numerator = new BigDecimal("0");
    
    BigDecimal a = new BigDecimal("-1");
    a = a.pow(k);

    BigInteger b = new BigInteger(str(factorial(6*k)));

    BigInteger c = new BigInteger("13591409");
    BigInteger d = new BigInteger("545140134");
    d = d.multiply(big_int_k);
    c = c.add(d);

    numerator = numerator.add(a);
    numerator = numerator.multiply(BigDecimal(b));
    numerator = numerator.multiply(BigDecimal(e));
    
    double denominator = factorial(3*k) * pow(factorial(k), 3) * pow(640320, 3*k + 3/2);
    pi.add(12 * (numerator/denominator));
    println(1/pi);
  }
  return 1/pi;
}
long factorial(int n) {
  if (n == 1 || n == 0) {
    return 1;
  } else {
    return n * factorial(n-1);
  }
}
void setup() {
  println(calculate_pi());
}