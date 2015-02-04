console.clear()

# A comment!

# Everythin is wrapped within an anonymous function. It can be turned on/off.

###
  Block comment!
###

# Variables
# * We don’t use "var", just a variable name
# * No semicolons necessary
# * Variables are always declared at the top of the scope

myFirstVar = "Hey! :)"
myBoolVar = true

# * You may want to use window (in  browser environment) to define global variables

window.myGlobalVar = "Hello world!"

# Arrays and object literals
# * Arrays look pretty much the same

myArr = [1, 2, 3]

# * Objects can be defined with braces, no commas necessary

myObjBraces = {
  key1: 'val 1'
  key2: {
    nestedKey1: 'nested val 1'
    nestedKey2: 'nested val 2'
  }
}

# Braces are not required, though

myObj =
  key1: 'val 1'
  key2:
    nestedKey1: 'nested val 1'
    nestedKey2: 'nested val 2'

# * "function" stands for "->" in CS
# * Functions are defined just like variables

# myFunc = ->
  # console.log("I'm a function! :)")

# * Braces with arguments are optional

# myFuncWithArgs = (arg1, arg2) ->
#   console.log(arg1)
#   console.log(arg2)

# * Functions are called just like in JS

# myFunc()
# myFuncWithArgs('hey', 'hey')

# * You can don't have to use brackets to pass arguments, though

# myFuncWithArgs 'hey', 'hey'

# * You can easily set default values for arguments

# myFuncWithDefArgs = (arg1 = 1, arg2 = 2) ->
#   console.log arg1
#   console.log arg2

# myFuncWithDefArgs()
# myFuncWithDefArgs 44, 44

# The last expression within the given function is automatically returned

# myFuncAdd = (a, b) -> a + b
#
# console.log myFuncAdd(1, 1)

# If you don't wan't to return anything just use... "return"

# myFuncNoReturn = ->
#   console.log "I'm not giving anything in return!"
#   return

# "do ->" is available in CS, it stands for self calling anonymous function

# do ->
#   myVarWithinAScope = "I'm hidden in a scope. :)"
#   console.log myVarWithinAScope

# console.log myVarWithinAScope

# Default arguments values in "do"

# do (w = window) ->
#   console.log w
#   console.log window

# Shadowing is not possible in CS

# myShadyVar = "I'm the one!"
#
# do ->
#   myShadyVar = ":->"
#
# console.log myShadyVar

# if, else

# if myBoolVar == true
#   console.log myFirstVar
# else
#   console.log 'nope'

# Can be used in one line

# if myBoolVar == true then console.log myFirstVar else console.log 'nope'

# And as the terenary operator

# myTernaryVar = if myBoolVar then 0 else 1

# Aliases

# myBoolVar = false

# if myBoolVar is false
#   console.log "My bool var is false!"
#
# if myBoolVar isnt false
#   console.log "My bool var is true!"

# Loops
# * Use "for in" for arrays

# for item in myArr
  # console.log item

# * Use "for of" for object literals

# MyObj = ->
#
# MyObj::key3 = 'val 3'
#
# myObj = new MyObj()
#
# myObj.key1 = 'val 1'
# myObj.key2 = 'val 2'

# for key, val of myObj
#   console.log key
#   console.log val

# * Use [start..end] to iterate for a given number of times

# for nr in [1..2]
#   console.log nr

###
  BREAK ;)
  take a look at exemplary file
###

# * It's possible to use "@" instead of "this"

# myApp =
#   text: "FIRE",
#
#   init: ->
#     @fire()
#
#   fire: ->
#     console.log @text
#
# myApp.init()

# Comprehensions

# console.log "A comprehension! :)" if myBoolVar

# Comprehensions for loops

# logArrItems = (item) ->
#   console.log item
#
# logArrItems item for item in myArr

# incrementItems = (item) ->
  # console.log "Original value is #{item}"
  # console.log "Processed value is #{item + 1}"
  # item + 1

# processedArr = (incrementItems item for item in myArr)

# A map method might be a better option, though

# processedArr = myArr.map logArrItems

# console.log processedArr

# On the other hand the comprehension can work for objects

# modifyObj = (key, val) ->
#   key
#
# processedObj = (modifyObj key, val for key, val of myObj)
#
# console.log processedObj

# String interplation
# myVar = "hi";
# myInterpolatedVar = "Console is saying #{myVar}!"
#
# console.log myInterpolatedVar

# Block strings – useful for writing markup

# myMarkupVar = """
#   <div class="some-class">
#     #{myVar}
#   </div>
# """
#
# console.log myMarkupVar

# It's possible to use the fat arrow for functions to preserve the context of "this"

# $.getJSON 'data/data.json', (data) =>
#   @buildSections(data)
#   @initLightbox()
#   @initAccordion()

# The existential operator help you verify if variable exist

# console.log "YOLO!" if wtf?

# It works with objects too!

# console.log "Works" if myObj?.log
