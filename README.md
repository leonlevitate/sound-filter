Brief

To change how tracks sound, write a band pass filter

Command Line Tool
User is a musician

A soundwave collection of integers
Each frequency has a lower limit
Each frequency has an upper limit

Acceptance criteria

Input:

([80, 90, 100, 120, 120], 90, 110)

Output:

([90, 90, 100, 110, 110])

Edge Cases

- Throws an error if passed a string as a parameter
