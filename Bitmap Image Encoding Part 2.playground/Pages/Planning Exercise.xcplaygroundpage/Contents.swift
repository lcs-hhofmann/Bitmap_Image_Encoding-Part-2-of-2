//: [Previous](@previous)
//: # Planning Exercise
/*:
 Now we need to *make a plan* for how to teach the computer to decode the more interesting bitmap images.
 
 As humans, we already know how to do this.
 
 So if you haven't yet, decode this image on paper:
 
 ![encoding](encoding.png "png")
 
 The encoded bitmap below looks like a Christmas tree.*
 
 \*At least it's supposed to; my bitmap art skills are perhaps an area for improvement! *–Mr. Gordon*
 
 Now: think carefully about how you actually performed the decoding.
 
 What decisions did you make?
 
 List the decisions you made in as much detail as possible.
 
 */

// Here's my list of points describing how I decoded the image...
// 1.Whenever the first number was more than zero I counted that many squares and left them blank
// 2.If the first number was zero I imediately started colouring the next number's amount of squares
// 3.Every second, fourth, sixth, etc. number I counted that many and coloured them in
// 4. Every first, third, fifth, etc. number I counted and left blank
// 5. I looked for patterns in the code to make it easier to do fast
// etc. (add more points as needed)

/*:
 Now, **remember to commit and push your work**.
 */

