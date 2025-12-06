<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Takes up to 5 inputs (2 ones bits, 2 two bits, and a carry one bit) and outputs the addition of all inputs.

## How to test

A1 **xor** B1 should set the middle light to high  
A1 **and** B1 should set the furthest right light to high  
A1 **xor** B1 **and** A0 **and** B0 should set the furthest right light to high  
A0 **xor** B0 should set the furthest left light to high  
A0 **and** B0 **xor** (A1 **or** B1) should set the middle light to high  
The carry bit acts as an additional input of value A0 or B0  
When all bits are active, all lights should be on  

## External hardware

LEDs and a variable power source, such as a button.
