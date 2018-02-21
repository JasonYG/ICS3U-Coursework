# Number Systems
-------
#### By Jason Guo




## Binary
---------
Binary is a number system with only 2 digits, 0 and 1. They are sometimes respectively refered to as "low" and "high" in digital data memory, storage, processing, and communications.

A binary digit, or "bit", is the smallest unit of data on a computer, where each bit can have a single value of either 0 or 1. Binary numbers, when written out, are similar to the base 10 system we are used to, however with base 2 instead. Each column represents a respective power of 2, starting from the right-most digit with a power 0.

| Number System | "Hundred thousands" | "Ten thousands" | "Thousands" | "Hundreds" | "Tens" | "Ones" |
| --- | --- | --- | --- | --- | --- | --- |
| Binary: base 2 | 32 | 16 | 8 | 4 | 2 | 1 |
| Decimal: base 10 | 100000 | 10000 | 1000 | 100 | 10 | 1 |

To convert from binary to decimal, simply add the "weight" of the digits with a 1 value.   
For example, 1010101 would be:


| 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| --- | --- | --- | --- | --- | --- | --- |
| **1** | 0 | **1** | 0 | **1** | 0 | **1** |

And thus its decimal value would be 64 + 16 + 4 + 1 = **85**.

The source used for this section can be found [here](http://whatis.techtarget.com/definition/binary)



## Octal
-------
Similarly to binary, octal is an older computer-based number system that is base eight. Unlike binary, the digits 0 to 7 are used in octal; otherwise, it is quite similar, however octal uses powers of 8 instead of powers of 2.

For example, 8 in base 10 would be written as 10<sub>8</sub> in octal, where the subscript 8 represents that the octal number system is being used.

To convert 545<sub>8</sub> to base 10, we would use a process similar to that in binary.

| 8<sup>2</sup> | 8<sup>1</sup> | 8<sup>0</sup> |
| --- | --- | --- |
| 5 | 4 | 5 |

>5 x 8<sup>2</sup> + 4 x 8<sup>1</sup> + 5 x 8<sup>2</sup>  
>= 320 + 32 + 5  
>= 357

The source used for this section can be found [here](http://www.purplemath.com/modules/numbbase3.htm)



## Hexadecimal
-------
Computer programming and computer engineering often use base-sixteen, or hexadecimal, math. Instead of using digits 0 and 1, or 0 to 7, hexadecimal uses digits 0 to 15. However, since we don't have single digits for numbers above 10, we use letters instead. The following are the digits used in hexadecimal:

>0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

"A" would be 10, "B" would be 11, and so on until 15.

For example, to convert the hexadecimal number ABCDEF<sub>16</sub> to decimal, we would follow a process similar to octal or binary:

| 16<sup>5</sup> | 16<sup>4</sup> | 16<sup>3</sup> | 16<sup>2</sup> | 16<sup>1</sup> | 16<sup>0</sup> |
| --- | --- | --- | --- | --- | --- |
| **A** or 10 | **B** or 11 | **C** or 12 | **D** or 13 | **E** or 14 | **F** or 15 |

>10 x 16<sup>5</sup> + 11 x 16<sup>4</sup> + 12 x 16<sup>3</sup> + 13 x 16<sup>2</sup> + 14 x 16<sup>1</sup> + 15 x 16<sup>0</sup>  
>= 10 485 760 + 720 896 + 49 152 + 3 328 + 224 + 15  
>= 11 259 375



## ASCII
-------

## Unicode
-------







