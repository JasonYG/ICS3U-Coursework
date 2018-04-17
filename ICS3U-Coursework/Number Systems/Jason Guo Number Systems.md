# Number Systems
-------
#### By Jason Guo




Binary
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

The source used for this section can be found [here](http://whatis.techtarget.com/definition/binary).



Octal
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

The source used for this section can be found [here](http://www.purplemath.com/modules/numbbase3.htm).



Hexadecimal
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

The source used for this section can be found [here](http://www.purplemath.com/modules/numbbase3.htm).



ASCII
-------
ASCII, or the American Standard Code for Information Interchange, is a common format used for text files in computers and on the internet. In ASCII, every alphabetic, numeric, and special character is represented with a 7-bit binary number. There are 128 possible characters defined.

A table with all possible ASCII characters can be found [here](http://www.asciitable.com/). 

ASCII, amazingly, can also be used in creative ways such as making [art](http://copy.r74n.com/ascii-art).

The source used for this section can be found [here](http://whatis.techtarget.com/definition/ASCII-American-Standard-Code-for-Information-Interchange).



Unicode
-------
Despite its popularity, sometimes ASCII can have limitations that may be impractical in certain situations. For example, if someone were to write in Arabic or Chinese, ASCII would be unusable because it contains only letters from the English alphabet. Even if someone were to write in only the English language, ASCII would not contain every letter, punctuation, and technical symbol in common use.

Instead, Unicode was developed to solve this problem. In most modern software providers, Unicode is used and provides a unique number for every single character. Unicode is what allows languages and symbols to be represented in operating systems, search engines, browsers, and more.

As of now, Unicode standard contains 34 168 distinct coded characters from 24 language scripts, which covers the most prominent written languages of the world ([source](http://whatis.techtarget.com/definition/Unicode)). A large table of the Unicode characters can be found [here](https://unicode-table.com/en/#cyrillic).

The source used for this section can be found [here](http://unicode.org/standard/WhatIsUnicode.html).

Computer Hardware
-------
The following table describes which number system every piece of computer hardware uses:

| Hardware | Number System |
| :---: | :--- |
| CPU | In most modern CPUs, binary is used to represent numbers, with every digit being represented by a physical quantity ("high" or "low" voltage). CPUs use binary to perform complex calculations. | 
| GPU | GPUs are largely used to manipulate computer graphics and image processing. GPUs process this information as binary. Some video decoding processes accelerated by the GPU include bitstream processing, which uses context-adaptive binary arithmetic coding. |
| Sound card | Sound cards create stored sound using a Digital to Analogue Convertor (DAC). Sound cards use a changing voltage ("high" and "low") to represent a series of binary numbers. |
| Microphone | Microphones convert sound waves in changes in voltage. This electrical information is then processed by the sound card, and thus the changing voltages would represent binary numbers. |
| Speaker | The speaker receives changing voltages from the sound card as a series of binary values. These changing voltages vibrate to reproduce the stored sound of the sound card. |
| Monitor | In digital images, bytes, or a group of 8 bits, can have 256 possible combinations. These combinations can be used to define 256 levels of colour in images. Each digital image is really composed of many squares, called _picture elements_, or pixels. Each pixel is stored in the computer file, and has a red, green, and blue value. Monitors are simply an output device for displaying these pixels, and thus use binary. |
| Projector | Since projectors are another type of output device for digital images, they mainly use the binary number system. Many projectors also use a binary encoding scheme to function properly. |
| Keyboard | When a key is pressed, an electrical signal is sent to the processor in the form of a binary value. Older keyboards would have corresponded closely to ASCII values, however modern keyboards would use more advanced systems of character representation, such as Unicode. |
| Mouse | Computer mice translate motion into electrical signals that are then interpreted by the computer. In most mice, the processor reads the pulses from infrared sensors on the mouse and converts them into information in the form of binary, which is more usable to the computer. |
| Scanner | The purpose of a scanner is to analyze an image and process it, and therefore it must "sample" all the colours on the image and convert them into a numerical value (RGB). Thus, scanners use a binary number systems. Black-and-white scanners more easily generate binary information, such as a barcode scanner. |
| Drawing tablet | Drawing tablets use magnetic signals generated from the stylus to send information which can be converted into coordinate information. Given the nature of drawing tablets, creating digital images, binary must be used to record the RGB values of each individual pixel. |
| Printer | Printers accept data from the computer in the form of binary, which is then interpreted and printed onto the page. Specific colour values, i.e. RGB values, are used to create an accurate depiction of how the digital image must look on paper.|
| HDD | Hard drives use magnetism to store binary values to a disk, which can then be stored and accessed later. The number of binary numbers that can be stored determine the "size" of a hard drive (e.g. 1000 mega**bytes**).  |
| SSD | Unlike hard drives, SSDs use semiconductor chips rather than magnetism to store information. Since there are no moving parts, SSDs are significantly faster than the average hard drive. Information, however, is still stored as binary values, not unlike the hard drive.|
| Motherboard | Motherboards connect all parts of a computer an allows communication between them. Motherboards send electrical signals for communication, and thus uses the binary number system. |
| RAM | RAM is often made up of millions of transistors and capacitors. In dynamic random access memory (DRAM), the most common form of computer memory, transistors and capacitors are paired up to create a memory cell. Each of these memory cells represent a single bit of information, and thus RAM uses binary to store information. |
| Network adapter | Network adapters convert received electrical frequencies into binary information that can be used by the computer. The 1s and 0s would be represented by changes in voltage of the frequencies. |
