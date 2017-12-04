//: [Previous](@previous) / [Next](@next)
//: # Decoding an Image
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Decoding the text
 Now we will (at last!) decode the image.
 
 Recall, our rules are:
 
 * If a line starts with a 0, the first pixel is black.
 * If a line does not start with a 0, the first pixel is white.
 * When a comma is encountered, a new number begins, and the colour switches.
 * When a newline character is encountered, go to a new row in the image.
 * Once we have a new number, we draw that many pixels in the current colour.
 
 First, copy and paste your encoded image string to this page.
*/

//plan what each line will be
    //background
    //background
    //background
    //background
    //background
    //top of black outline
    //black and red only
    //start of the gleam and start of the straight side
    //second part of the gleam
    //start of the shadow and end of the gleam and end of the staright bit
    //heart starts concaving back
    //concaving...
    //concaving...
    //concaving...
    //concaving...
    //concaving...
    //final point of the heart
    //background
    //background
    //background
    //background

//add the matching code to actually make the image
let encodedBitmap = """
u9u9u2
u9u9u2
u9u9u2
u9u9u2
u9u9u2
u5b3u3b3u6
u4b1r3b1u1b1r3b1u5
u3b1r5b1r2w1r2b1u4
u3b1r9w1r1b1u4
u3b1d1r8w1d1b1u4
u4b1d1r7d1b1u5
u5b1d1r5d1b1u6
u6b1d1r3d1b1u7
u7b1d1r1d1b1u8
u8b1d1b1u9
u9b1u9u1
u9u9u2
u9u9u2
u9u9u2
u9u9u2
"""

// Make a canvas
let canvas = Canvas(width: 402, height: 402)

// Make a grid
// NOTE: The code that builds the grid was tucked away in something called a *function* to keep things tidy. We'll learn about functions later.
drawGrid(on: canvas)

// Start drawing at left
var x = 0

// Set the size of a "pixel"
let cellSize = 20

// Keep track of current colour
var currentColor = "white"

// Start drawing at top of grid
var y = canvas.height - cellSize - 2

// Store the current number of pixels to draw
var drawThisManyPixels = 0

// Iterate over each character in the encoded bitmap string
for character in encodedBitmap {
    
    //make the if satements that will add the colour bits
    if character == "w" {
        currentColor = "white"
        canvas.fillColor = Color.white
    } else if character == "u" {
        currentColor = "blue"
        canvas.fillColor = Color.init(hue: 180, saturation: 80, brightness: 90, alpha: 100)
    } else if character == "r" {
        currentColor = "red"
        canvas.fillColor = Color.init(hue: 0, saturation: 80, brightness: 90, alpha: 100)
    } else if character == "d" {
        currentColor = "dark red"
        canvas.fillColor = Color.init(hue: 0, saturation: 80, brightness: 70, alpha: 100)
    } else if character == "b" {
        currentColor = "black"
        canvas.fillColor = Color.black
    } else if character == "\n" {
        
        // We are on a new line, so reduce the vertical position
        // and reset the horizontal position
        y = y - cellSize
        x = 0
        
    } else {
        
        // Get the new number of pixels to draw
        drawThisManyPixels = Int(String(character))!
        
        // Draw the pixels
        for _ in 1...drawThisManyPixels {
            
            // Draw the enlarged "pixel"
            canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: cellSize, height: cellSize)
            
            // Increase x so that the next pixel is drawn to the right of this one
            x += cellSize
            
        }
        
    }
    
}

/*:
 ### Check the results
 Does the output match what you'd expect, based on the values in the encoded string?
 
 How do you know?
 
 Write your ideas in the code comment below.
 */

// I notice that it matched what I coded.
// I know this because I went through all of it and added what I needed to to get the results that I wanted.

/*:
 ## Extension
 Now that you have an understanding of how if statements (also called *selection* statements or *conditional* statements) work... extend this code.
 
 How could you adjust the rules so that pixels can be rendered in colour?
 
 What additions or changes would you need to make to the code above?
 
 Work with a partner to discuss possibilities and then make the changes in code.
 */


/*:
 Now, **remember to commit and push your work**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
