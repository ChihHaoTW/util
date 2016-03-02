
#### DO NOT use while using jQuery
Object.prototype.hasOwnValue = (val) ->
  for prop of @
    if @hasOwnProperty prop and @[prop] is val
      return true
  false
###########

Array.prototype.hasOwnValue = (val) ->
  for obj in @
    for prop of obj
      if obj.hasOwnProperty prop and obj[prop] is val
        return true
  false

Array.prototype.shuffle = ->
  for i from this.length - 1 til 0 by -1
    j = Math.floor(Math.random! * (i + 1))
    temp = this[i]
    this[i] = this[j]
    this[j] = temp
  this
