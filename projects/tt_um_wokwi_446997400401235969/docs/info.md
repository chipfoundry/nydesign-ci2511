<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

For inputs that give a constant voltage from switches feed into each of the four inputs. Through logic gates, the circuit determines which segments should be on and which should be off. Segments that should be on hvae a high signal on their output line that can connect to its correspoding pin on a 7 segment display.

## How to test

Connect 4 switches into each of the inputs. Counting up from 0 to 9 in binary (using the switches where input_A is the 8 place and input_D is the 1 place in binary), the 7 segment display should display the corresponding digital number. Above 9 (10-15) the decoder 'breaks' as it shows nothing useful (some other decoders display consistent signals above 10).

## External hardware

Some 12 LEDs to show signals and a seven segment display to display the output. Resistors were used as needed to keep the voltage appropriate.
