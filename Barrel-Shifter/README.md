Barrel Shifter is a digital circuit the can shift a data by a certain number of bits. this lab required a left and right shifter. A testbench was created to test the functionality of the shifters. we then utilized this shifter into being able to shift to the left by the control of a 2x1 mux. The second step was designing a shifter that had a pre and post reversing circuits.

Functionality of the Barrel Shifter:

Example 1 (Right barrel shift): input: a = 1011_0101 shift amount: amt = 3 output: y = 1011_0110

Example 2 (Left Barrel Shift): input: a = 1100_0110 shift amount: amt = 3 output: y = 0011_0110

Look up tables = 27

Multi Barrel SHifter Mux Diagram:
![image](https://github.com/user-attachments/assets/15a76eb1-2847-4273-b1fe-924e842f2f68)

Multi Barrel Shifter Reverser Diagram:
![image](https://github.com/user-attachments/assets/4b2c10cb-72d7-4b93-b428-b7133c6ac3f2)

A picture of the test bench for both shifters:
![image](https://github.com/user-attachments/assets/625620b6-30e6-46c1-90b3-e71ff185dcca)
