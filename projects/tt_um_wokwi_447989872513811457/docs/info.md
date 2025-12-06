<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit counts in BCD from 0-15 using an external clock signal. It has an active high enable and reset functionality. D represents the MSB while A represents the LSB.

## How to test

Ensure that the enable is high, provide a clock signal at an observable frequency. Connect the outputs to LEDs or some other method of monitoring their volatage. Watch as the counter circuit cycles from 0-15 in BCD.

## External hardware

Oscilator, LEDs, switch
