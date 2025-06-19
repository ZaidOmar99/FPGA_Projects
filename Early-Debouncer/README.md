Early debouncer circuit is a circuit that is used in digital systems to eliminate noise or mechanical bounce from switches,or push buttons. When a mechanical switch is pressed or toggled, the contacts do not immediately settle into a clean on/off state. Instead, they "bounce" multiple times due to mechanical vibrations, creating several unintended transitions in the digital signal. The early debounce we designed this lab refers to the early stage of detection in the debouncing circuit, when our input switch changes from 0 to 1, the FSM responds immediately. The FSM then ignores the input for about 20ms to avoid glitches. After this amount of time, the FSM starts to check the input for the falling edge.

Below is a state diagram showing our FSM:
![image](https://github.com/user-attachments/assets/c73604c3-170a-4dca-9957-af8efd4b9c41)


ASM Chart: 
![image](https://github.com/user-attachments/assets/d301ddf8-2b06-4422-b413-4c5d9871853a)


Testbench: 
![image](https://github.com/user-attachments/assets/d1eaecd1-dbd3-46ef-9fa6-aaf09659f643)


The Output on an Oscilloscope: 
![image](https://github.com/user-attachments/assets/35f55a6e-11a0-4f74-a829-b22693f62f79)
