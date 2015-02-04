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

# myFirstVar = "Hey! :)"
# myBoolVar = true

# * You may want to use window (in  browser environment) to define global variables

# window.myGlobalVar = "Hello world!"

# Arrays and object literals
# * Arrays look pretty much the same

# myArr = [1, 2, 3, 4, 5]

# * You can easily slice them

# myNewArr = myArr[1..3]
# console.log myNewArr

# * Objects can be defined with curly braces, no commas necessary

# myObjBraces = {
#   key1: 'val 1'
#   key2: {
#     nestedKey1: 'nested val 1'
#     nestedKey2: 'nested val 2'
#   }
# }

# Curly braces are not required, though

# myObj =
#   key1: 'val 1'
#   key2:
#     nestedKey1: 'nested val 1'
#     nestedKey2: 'nested val 2'

# * "function" stands for "->" in CS
# * Functions are defined just like variables

# myFunc = ->
#   console.log("I'm a function! :)")

# function can also be written in one line

# myOnelineFunc = -> console.log "One line func!"
#
# myOnelineFunc()

# * Parentheses with arguments are optional

# myFuncWithArgs = (arg1, arg2) ->
#   console.log(arg1)
#   console.log(arg2)

# * Functions are called just like in JS

# myFunc()
# myFuncWithArgs('hey', 'hey')

# * You can don't have to use brackets to pass arguments, though

# myFuncWithArgs 'hey', 'hey'

# * You can easily set default values for arguments

# myFuncWithDefArgs = (arg1 = 'default', arg2 = 2) ->
#   console.log arg1
#   console.log arg2

# myFuncWithDefArgs()
# myFuncWithDefArgs 44, 44

# The last expression within the given function is automatically returned

# myFuncAdd = (a, b) -> a + b
#
# console.log myFuncAdd(1, 5)

# If you don't wan't to return anything just use... "return"

# myFuncNoReturn = ->
#   console.log "I'm not giving anything in return!"
#   return

# "do" keyword is available in CS, it stands for immediately-invoked function expression

# do ->
#   myVarWithinAScope = "I'm hidden in a scope. :)"
#   console.log myVarWithinAScope

# console.log myVarWithinAScope

# Default arguments values in "do"

# do ($ = jQuery) ->
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

# myBoolVar = true
#
# myTerenaryVar = if myBoolVar then 0 else 1
#
# console.log myTerenaryVar

# Aliases

# myBoolVar = false
#
# if myBoolVar is false
#   console.log "My bool var is false!"
#
# if myBoolVar isnt false
#   console.log "My bool var is true!"

# Loops
# * Use "for in" for arrays

# myArr = [1, 2, 3]

# for item in myArr
#   console.log item

# * Use "for of" for object literals

# MyObj = ->
#
# MyObj::key3 = 'val 3'
#
# myObj = new MyObj()
#
# myObj.key1 = 'val 1'
# myObj.key2 = 'val 2'

# myObj =
#   key1: 'val 1'
#   'some other key': 'value'
#
# for key, val of myObj
#   console.log key
#   console.log val

# * Use [start..end] to iterate for a given number of times

# for nr in [1..4]
#   console.log "Hello!"

# BREAK ;)
# take a look at exemplary file
# main-vanilla.js
# and main.coffee

# * It's possible to use "@" instead of "this"

# myApp =
#   text: "FIRE"
#
#   init: ->
#     myApp.fire()
#
#   fire: ->
#     console.log myApp.text
#
# myApp.init()

# myApp =
#   text: "FIRE"
#
#   init: ->
#     this.fire()
#
#   fire: ->
#     console.log this.text

# myApp.init()

# myApp =
#   text: "FIRE"
#
#   init: ->
#     @fire()
#
#   fire: ->
#     console.log @text

# myApp.init()

# Comprehensions

# myBoolVar = true
#
# console.log "A comprehension! :)" if myBoolVar

# Comprehensions for loops

# myArr = [1, 2, 3]

# console.log myArr

# logArrItems = (item) ->
  # console.log item

# logArrItems item for item in myArr

# console.log myArr
#
# incrementItems = (item) ->
#   console.log "Original value is #{item}"
#   console.log "Processed value is #{item + 1}"
#   item + 1
#
# processedArr = (incrementItems item for item in myArr)
#
# console.log processedArr

# A map method might be a better option, though

# processedArr = myArr.map incrementItems
#
# console.log processedArr

# On the other hand the comprehension can work for objects

# myObj =
#   someKey: 'some value'
#   someOtherKey: 'some other value'

# modifyObj = (key, val) ->
#   [key, val]
# #
# processedObj = (modifyObj key, val for key, val of myObj)
# #
# console.log processedObj

# String interplation
# myVar = "lol"
# myInterpolatedVar = "Console is saying #{myVar} #{myVar}!"

# console.log myInterpolatedVar

# Block strings – useful for writing markup

# myMarkupVar = """
#   <div class="some-class">
#     #{myVar}
#   </div>
# """
#
# console.log myMarkupVar

# The existential operator help you verify if variable exist

# wtf = "YOLO!"

# console.log wtf if wtf?

# It works with objects too!

# console.log "Works" if console?.log

# BREAK ;)
# take a look at exemplary file
# main-refactored.js

# Destructuring

# * For arrays

# myArr = [1, 2, 3]
# [val1, val2, val3] = myArr
# val1 = myArr[0]
# val2 = myArr[1]
# val3 = myArr[2]

# console.log val1
# console.log val2
# console.log val3

# * It's easy to get the first and the last value

# longTextVar = "Some long text goes here!"
#
# [theFirstWord, ..., theLastWord] = longTextVar.split ' '
#
# console.log theFirstWord
# console.log theLastWord

# * For objects

# {key1, key2} = myObj

# key1 = myObj.key1
# key2 = myObj.key2

# console.log key1
# console.log key2

# It's possible to use the fat arrow for functions to preserve the context of "this"

# $.getJSON 'data/data.json', (data) ->
#   @buildSections(data)
#   @initLightbox()
#   @initAccordion()

# Classes!

# class MyClass
#   privateMethod = (arg) ->
#     console.log "I'm private but #{arg}"
#
#   constructor: (@prop1, @prop2) ->
#
#   publicMethod: ->
#     privateMethod("in public method")
#     console.log "I'm public!"
#     console.log @prop1 if @prop1?
#     console.log @prop2 if @prop2?
#     console.log "==="
#
#   @staticMethod: ->
#     privateMethod("in static method")
#     console.log "I'm method!"
#     console.log "==="
#
# myInstance = new MyClass('bam!')
#
# myInstance.publicMethod()
# MyClass.staticMethod()
#
# class MyClonedClass extends MyClass
#   publicMethod: ->
#     super()
#     console.log "I'm actually an extension. ;)"
# #
# myNewInstance = new MyClonedClass()
# #
# myNewInstance.publicMethod()
