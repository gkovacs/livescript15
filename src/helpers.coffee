# This file contains the common helper functions that we'd like to share among
# the **Lexer**, **Rewriter**, and the **Nodes**. Merge objects, flatten
# arrays, count characters, that sort of thing.

# Count the number of occurences of a character in a string.
exports.count = (string, letter) ->
  num = pos = 0
  num++ while pos = 1 + string.indexOf letter, pos
  num

# Delete a key from an object, returning the value. Useful when a node is
# looking for a particular method in an options hash.
exports.del = (obj, key) ->
  val =  obj[key]
  delete obj[key]
  val

# Gets the last item of an array(-like) object.
exports.last = (array, back) -> array[array.length - (back or 0) - 1]
