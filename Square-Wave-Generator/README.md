Programmable sqaure wave generator is a device that produces a square wave signal with adjustable parameters like frequency, duty cycle, and amplitude.A programmable square wave generator akkiws the user to modify the characteistics of the sqaure wave, such as the duration of the duty cycle. For our design for the square wave we first went ahead and had two 4-bit inputs that we multiplied by 10 and both our inputs go into a 2x1 mux that outputs into a counter, that counter output then goes into a T-flip flop that will have its output be the select for the 2x1 mux and also be the output for our square wave.

Below is a diagram for our design for this lab:
![image](https://github.com/user-attachments/assets/26634e36-2b11-4a82-82ce-392f218637ff)

Screenshot of the output on the oscilloscope:
![image](https://github.com/user-attachments/assets/e63195e1-a4ee-4bf2-aede-d25a5b4c02fc)
