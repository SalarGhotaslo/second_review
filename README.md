## Company - Digital audio

Musician writing electronic music need there soundtrack sounds
Using music filters to change the audio
Write a band pass filter

## Band pass filter

- Takes an input track
- Filters out frequencies that are above and below the information
- Input track comes in as an array of integers
- Each integer represents a single frequency with the soundwave
- If the frequency in the soundwave is below the lower threshold then the soundwave change to match this value
- If the frequency in the soundwave is above the higher threshold then the soundwave change to match this value
- Client would like a default of an lower limit of 40 and an upper limit of 1000

## Example from the client

- [10, 20, 30, 40, 50, 60], 25, 45 => [25, 25, 30, 40, 45, 45]

## Inputs and outputs

- [30],25,45 => 30
- [20],25,45 => 25
- [60],25,45 => 45
- [20,60],25,45 => 25,45
- [10, 20, 30, 40, 50, 60], 25, 45 => [25, 25, 30, 40, 45, 45]
