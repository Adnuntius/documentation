# Utility Methods

adn.js provides utility methods that can be used in your creative's layouts to help you with its design.

The following methods can each be called from within a layout and provide the described functionality. The methods have been written specifically to work on as wide an array of browsers as possible.

## adn.util.isNumber\(value\)

Whether the passed-in value is a finite number. Returns `true` or `false`.

## adn.util.isInteger\(value\)

Whether the passed-in value is an integer. Returns `true` or `false`.

## adn.util.isArray\(value\)

Whether the passed-in value is an array. Returns `true` or `false`.

## adn.util.isObject\(value\)

Whether the passed-in value is an object. Returns `true` or `false`. Arrays and `null` return `false` and are not considered an object.

## adn.util.isTrue\(value\)

Whether the passed-in value is considered true. Returns `true` or `false`.

Both the string value `'true'` and the boolean value `true` will return `true` here.

## adn.util.isFunction\(value\)

Whether the passed-in value is a function. Returns `true` or `false`.

## adn.util.isString\(value\)

Whether the passed-in value is a string. Returns `true` or `false`.

## adn.util.isStringWithChars\(value\)

Whether the passed-in value is a string with at least one character that is not blank space. Returns `true` or `false`.

## adn.util.isDefined\(value\)

Whether the passed-in value is defined. Returns `true` or `false`. Returns `false` for any value that is either `undefined` or `null`, otherwise `true`.

## adn.util.isLoopable\(value\)

Whether the passed-in value can be iterated over. Returns `true` or `false`. Returns `true` for any array, HTML collection or NodeList.

## adn.util.isTopWindow\(\)

Whether the current window is the top window \(not an Iframe\). Returns `true` or `false`.

## adn.util.hasProperties\(obj\)

Whether the passed-in object has at least one property of its own. Returns `true` or `false`. If the passed-in parameter is not an object, will return `false`.

## adn.util.noop

Not a method as such -- is a property that contains an empty function that can be used to do nothing wherever a function is required.

## adn.util.dimension\(value\)

Returns the passed-in value as a string representation of dimensions in pixels.

Here are some examples:

* `12` returns `'12px'`
* `'12'` returns `'12px'`
* `'12px'` returns `'12px'`
* `'12%'` returns `'12%'`
* Every other value passed in that is neither a number nor a string will be returned unaffected

## adn.util.trim\(value\)

Returns the passed-in value with any blank space at the beginning or end of the string removed. If not a string, returns the passed-in value unaffected.

## adn.util.endsWith\(value, endValue\)

Whether the passed-in value ends with the passed-in endValue. Returns `true` or `false`. If either the passed-in value or endValue is not a string, will return `false`.

## adn.util.getFrameElement\(\)

Returns the current window's frame element. Wraps `window.frameElement` around a try-catch block to handle any browser cross-domain access restrictions.

## adn.util.createDelegate\(instance, method\)

Returns a delegate function that can be used with extra supplied arguments. Here's an example of how it works:

```text
adn.util.createDelegate(this, function(firstArg, secondArg, thirdArg) {
  console.log(firstArg); // outputs whatever the consumer of this delegate passes in
  console.log(secondArg); // outputs "anotherParam"
  console.log(thirdArg); // outputs 12
}, "anotherParam", 12)
```

## adn.util.addEventListener\(object, eventName, handler\)

Adds an event listener for the supplied event on the object and calls the handler function. Here's an example of how it works:

```text
adn.util.addEventListener(window, 'load', function(e) {
  console.log("This is the handler being called", e);
});
```

## adn.util.detachEventListener\(object, eventName, handler\)

Removes the event listener for the supplied event and the handler on the object. Here's an example of how it works:

```text
adn.util.detachEventListener(window, 'load', predefinedHandlerFunctionToBeDetached);
```

## adn.util.getWindowSize\(\)

Gets the viewport's size. Returns an object like the following: `{width: 1000, height: 1500}`

## adn.util.getWindowDims\(\)

Gets the viewport's size. Works just like `adn.util.getWindowSize` but returns: `{w: 1000, h: 1500}`

## adn.util.getScrollPos\(\)

Gets the window's current scroll position. Returns an object like the following: `{left: 10, top: 1500}`

## adn.util.getElementPosition\(element\)

Gets the element's position in the page. Returns an object like the following: `{left: 10, top: 1500}`

## adn.util.getElementDimensions\(element\)

Gets the element's dimensions. Returns an object like the following: `{w: 200, h: 300}`

## adn.util.forEach\(collection, callback\)

Loops through the supplied collection and calls the callback on every item.

Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList.

Here's two examples of how it works:

```text
adn.util.forEach({a: 'b', c: 'd'}, function(value, key) {
  console.log("Key", key);
  console.log("Value", value);
});
adn.util.forEach(['a','b'], function(entry, i) {
  console.log(entry + " is found at index " + i);
});
```

## adn.util.filter\(collection, callback\)

Returns an array of values that have passed the filter according to the callback.

Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList, but will return an array.

Here's two examples of how it works:

```text
adn.util.filter({a: 'b', c: 'd', e: 'f'}, function(value, key) {
  return key === 'a' || value === 'f';
}); // returns ['b', 'f'];

adn.util.filter(['a', 'b', 'd'], function(entry, i) {
  return entry === 'a' || i === 2;
}); // returns ['a', 'd'];
```

## adn.util.find\(collection, callback\)

Returns the first value found to match the conditions in the callback.

Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList, and will return a value. Returns `null` if no match is found according to the callback criteria.

Here's two examples of how it works:

```text
adn.util.find({a: 'b', c: 'd', e: 'f'}, function(value, key) {
  return key === 'a';
}); // returns 'b';

adn.util.find(['a', 'b', 'd'], function(entry, i) {
  return entry === 'b';
}); // returns 'b';
```

## adn.util.hasValue\(collection, value\)

Whether the collection contains any element with the passed-in value.

Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList. Returns `true` or `false`.

Here's two examples of how it works:

```text
adn.util.hasValue({a: 'b', c: 'd', e: 'f'}, 'f'); // returns true;

adn.util.hasValue(['a', 'b', 'd'], 'd'); // returns 'd';
```

