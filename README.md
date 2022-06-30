# Smoke-Fire-Alarm-System-Using-De10-lite-FPGA
By writing a VHDL code and using a De10 lite FPGA board, smoke sensor,  proximity sensor, buzzer and set of jumpers.





# For the project:
The idea of the project was a smoke/fire alarm system to detect if there is a smoke/fire inside a building using a smoke detector sensor, if the smoke sensor detects smoke, then a buzzer should go off and start buzzing letting all people know that the building is on fire and then if the building is on fire, it detects if people are inside that building using a proximity/object detector sensor that can detect moving objects.


# For the assignment:
Designing a 3-bit adder on the DE10-lite FPGA board using 6 switches (3 for each input). The sum should be displayed using 4 LEDS representing the 4-bit sum. Output the result on two of the 7-segment displays. (BCD addition)


# The implementation:

-	Alongside with the FPGA, what would happen when there is not smoke, the 7 segment display of the FPGA displays the word “SAFE”, then if there is smoke detected the buzzer would go off and start buzzing, and the 7 segment display of the FPGA will display the word “FIRE” and 5 LEDs of the FPGA LEDs will light on indicating also that there is fire, if the smoke detector is on, Object detector sensor will turn on and then check if people inside that area with smoke, if there are people inside, 5 other LEDs of the FPGA will light on indicating also that there are people inside , and also the 7 segment display will display a P (stands for People) if there are people when the smoke detector is on , and display E (stands for empty) if there are not any people and the place is empty.


-	Besides the 7 segment display, there are 10 LEDs used, 5 used to indicate there is a fire, and the other 5 is used to indicate if there are people detected.


-	 At default, when there is no fire, the 7 segment display will display “E SAFE” meaning that it does not detect people when there is not smoke. But when the smoke detector detects any smoke, 5 LEDs will light on indicating there is smoke/fire and the 7 segment display will display either “E FIRE”  or     “P FIRE” meaning that if it displays   “E FIRE” it indicates that the place is on fire but there are not any people inside and the other 5 LEDs for detecting people are off, but “P FIRE” indicates that the place is on fire and there are people inside , and the other 5 LEDs for detecting people are on. Thus when the smoke sensor is ON, the Object detector sensor is ON and it starts to check whether there are people/moving objects inside or not (E,P).


# Results:

-The whole circuit worked as planned and did all the steps. At first it displays “E SAFE” when there is not any smoke and no LEDs are on, but where there is any smoke detected, it displayed “E FIRE” or “P FIRE” depending on if there are objects/people moving in the area that has smoke and first 5 LEDs are ON indicating there is fire. If people are moving (inside that area that is on fire), then it should display “P FIRE” indicating there are people and the other 5 LEDS for moving objects/people are ON (10 LEDs ON in total (5 LEDs for Fire and 5 LEDs for detecting people/moving objects)). If there are not any people/moving objects, it should display “E FIRE” (E stands for Empty (no people) and P stands for People). 

1- At first no smoke  displays “E SAFE” and no LEDs are ON:

2- Then It detects a smoke  displays “E FIRE” and the 5 fire LEDs are ON:

3- Then It detects an Object/Person while it is detecting smoke  displays “P FIRE” and the other 5 detecting people LEDs are ON also:


* For better description, check the 2 word documents that were made to explain how it works better.


# Technologies
* Quartus (Quartus Prime 21.1)
* VDHL

