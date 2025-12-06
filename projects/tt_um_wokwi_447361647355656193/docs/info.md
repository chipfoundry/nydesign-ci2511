<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

XOR, AND, and OR gates are connected to inputs A,B, and C. Outputs of SUM and C-Out represented by LEDS should turn on and of with different combinations of inputs

## How to test
Set the inputs and check the outputs match the following truth table:

| A | B | C | SUM | C-OUT |
___________________________
| 0 | 0 | 0 |  0  |   0   |
___________________________
| 0 | 0 | 1 |  1  |   0   |
___________________________
| 0 | 1 | 0 |  1  |   0   |
___________________________
| 0 | 1 | 1 |  0  |   1   |
___________________________
| 1 | 0 | 0 |  1  |   0   |
___________________________
| 1 | 0 | 1 |  0  |   1   |
___________________________
| 1 | 1 | 0 |  0  |   1   |
___________________________
| 1 | 1 | 1 |  1  |   1   |
___________________________


## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
