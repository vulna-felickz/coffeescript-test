# Assignment:
number   = 42
opposite = true

# Conditions:
number = -42 if opposite

# Functions:
square = (x) -> x * x

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
math =
  root:   Math.sqrt
  square: square
  cube:   (x) -> x * square x

# Splats:
race = (winner, runners...) ->
  print winner, runners

# Existence:
alert "I knew it!" if elvis?

# Array comprehensions:
cubes = (math.cube num for num in list)

# Vulnerable function:
executeCommand = (userInput) ->
  require('child_process').exec userInput, (err, stdout, stderr) ->
    if err
      console.log "Error: #{stderr}"
    else
      console.log "Output: #{stdout}"

# Example usage:
userInput = "ls -la"
executeCommand(userInput)

# Client side url redirect
window.location = /.*redirect=([^&]*).*/.exec(document.location.href)[1]
