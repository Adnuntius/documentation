# Utility function in adn.js

<p>adn.js provides utility methods that can be used in your creative's layouts to help you with its design.</p>
<p>The following methods can each be called from within a layout and provide the described functionality. The methods have been written specifically to work
on as wide an array of browsers as possible.</p>
<table class="table table-condensed table-bordered">
  <thead>
  <tr>
    <th>Method and Basic Description</th>
    <th>Notes</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td><p><code>adn.util.isNumber(value)</code></p>
      <p>Whether the passed-in value is a finite number.</p>
    </td>
    <td>
      Returns <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isInteger(value)</code></p>
      <p>Whether the passed-in value is an integer.</p>
    <td>
      Returns <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isArray(value)</code></p>
      <p>Whether the passed-in value is an array.</p>
    <td>
      Returns <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isObject(value)</code></p>
      <p>Whether the passed-in value is an object.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Null and arrays return <code>false</code> and are not considered an object.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isTrue(value)</code></p>
      <p>Whether the passed-in value is considered true.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Both the string value <code>"true"</code> and the boolean value <code>true</code> will return <code>true</code> here.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isFunction(value)</code></p>
      <p>Whether the passed-in value is a function.</p>
    <td>
      Returns <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isString(value)</code></p>
      <p>Whether the passed-in value is a string.</p>
    <td>
      Returns <code>true</code> or <code>false</code>.
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isBlankString(value)</code></p>
      <p>Whether the passed-in value is a string and blank.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Only returns <code>true</code> for any value that is either an empty string or a string consisting solely of blank spaces.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isNotBlankString(value)</code></p>
      <p>Whether the passed-in value is not a string that is blank.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Only returns <code>true</code> for any value that is a string consisting of at least one character that is not blank space.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isDefined(value)</code></p>
      <p>Whether the passed-in value is defined.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Returns <code>false</code> for any value that is either <code>undefined</code> or <code>null</code>, otherwise <code>true</code>.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isLoopable(value)</code></p>
      <p>Whether the passed-in value can be iterated over.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>Returns <code>true</code> for any array, HTML collection or NodeList.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.isTopWindow()</code></p>
      <p>Whether the current window is the top window (not an Iframe).</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
    </td>
  </tr>
  <tr>
  <tr>
    <td><p><code>adn.util.hasProperties(obj)</code></p>
      <p>Whether the passed-in object has at least one property of its own.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>If the passed-in parameter is not an object, will return <code>false</code>.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.noop</code></p>
      <p>Not a method as such -- is a property that contains an empty function.</p>
    <td>
      <p>A property that is an empty function that can be used to perform no operations wherever a function is required.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.dimension(value)</code></p>
      <p>Returns the passed-in value as a string representation of dimensions in pixels.</p>
    <td>
      <p>Here are some examples:</p>
      <ul>
        <li><code>12</code> will return <code>'12px'</code></li>
        <li><code>'12'</code> will return <code>'12px'</code></li>
        <li><code>'12px'</code> will return <code>'12px'</code></li>
        <li><code>'12%'</code> will return <code>'12%'</code></li>
        <li>Every other value passed in that is neither a number nor a string will be returned unaffected</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.trim(value)</code></p>
      <p>Returns the passed-in value with any blank space at the beginning or end of the string removed.</p>
    <td>
      <p>Returns the trimmed string. If not a string, returns the passed-in value unaffected.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.endsWith(value, endValue)</code></p>
      <p>Whether the passed-in value ends with the passed-in endValue.</p>
    <td>
      <p>Returns <code>true</code> or <code>false</code>.</p>
      <p>If either the passed-in value or endValue is not a string, will return <code>false</code>.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getFrameElement()</code></p>
      <p>Returns the current window's frame element.</p>
    <td>
      <p>Wraps <code>window.frameElement</code> around a try-catch block to handle any browser cross-domain access restrictions.</p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.createDelegate(instance, method)</code></p>
      <p>Returns a delegate function that can be used with extra supplied arguments.</p>
    <td>
      <p>Here's an example of how it works:</p>
      <pre>adn.util.createDelegate(this, function(firstArg, secondArg, thirdArg) {
  console.log(firstArg); // outputs whatever the consumer of this delegate passes in
  console.log(secondArg); // outputs "anotherParam"
  console.log(thirdArg); // outputs 12
}, "anotherParam", 12)</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.addEventListener(object, eventName, handler)</code></p>
      <p>Adds an event listener for the supplied event on the object and calls the handler function.</p>
    <td>
      <p>Here's an example of how it works:</p>
      <pre>adn.util.addEventListener(window, 'load', function(e) {
  console.log("This is the handler being called", e);
});</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.detachEventListener(object, eventName, handler)</code></p>
      <p>Removes the event listener for the supplied event and the handler on the object.</p>
    <td>
      <p>Here's an example of how it works:</p>
      <pre>adn.util.detachEventListener(window, 'load', predefinedHandlerFunctionToBeDetached);</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getWindowSize()</code></p>
      <p>Gets the viewport's size.</p>
    <td>
      <p>Returns an object like the following: <code>{width: 1000, height: 1500}</code></p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getWindowDims()</code></p>
      <p>Gets the viewport's size.</p>
    <td>
      <p>Works just like <code>adn.util.getWindowSize</code> but returns: <code>{w: 1000, h: 1500}</code></p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getScrollPos()</code></p>
      <p>Gets the window's current scroll position.</p>
    <td>
      <p>Returns an object like the following: <code>{left: 10, top: 1500}</code></p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getElementPosition(element)</code></p>
      <p>Gets the element's position in the page.</p>
    <td>
      <p>Returns an object like the following: <code>{left: 10, top: 1500}</code></p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.getElementDimensions(element)</code></p>
      <p>Gets the element's dimensions.</p>
    <td>
      <p>Returns an object like the following: <code>{w: 200, h: 300}</code></p>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.forEach(collection, callback)</code></p>
      <p>Loops through the supplied collection and calls the callback on every item.</p>
    <td>
      <p>Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList.</p>
    <p>Here's two examples of how it works:</p>
    <pre>adn.util.forEach({a: 'b', c: 'd'}, function(value, key) {
  console.log("Key", key);
  console.log("Value", value);
});
adn.util.forEach(['a','b'], function(entry, i) {
  console.log(entry + " is found at index " + i);
});</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.filter(collection, callback)</code></p>
      <p>Returns an array of values that have passed the filter according to the callback.</p>
    <td>
      <p>Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList, but will return an array.</p>
      <p>Here's two examples of how it works:</p>
    <pre>adn.util.filter({a: 'b', c: 'd', e: 'f'}, function(value, key) {
  return key === 'a' || value === 'f';
}); // returns ['b', 'f'];

adn.util.filter(['a', 'b', 'd'], function(entry, i) {
  return entry === 'a' || i === 2;
}); // returns ['a', 'd'];</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.find(collection, callback)</code></p>
      <p>Returns the first value found to match the conditions in the callback.</p>
    <td>
      <p>Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList, and will return a value. Returns <code>null</code>
        if no match is found according to the callback criteria.</p>
    <p>Here's two examples of how it works:</p>
    <pre>adn.util.find({a: 'b', c: 'd', e: 'f'}, function(value, key) {
  return key === 'a';
}); // returns 'b';

adn.util.find(['a', 'b', 'd'], function(entry, i) {
  return entry === 'b';
}); // returns 'b';</pre>
    </td>
  </tr>
  <tr>
    <td><p><code>adn.util.hasValue(collection, value)</code></p>
      <p>Whether the collection contains any element with the passed-in value.</p>
    <td>
      <p>Works on anything that is iterable, i.e. any object, array, HTML Collection and NodeList. Returns <code>true</code> or <code>false</code>.</p>
    <p>Here's two examples of how it works:</p>
    <pre>adn.util.hasValue({a: 'b', c: 'd', e: 'f'}, 'f'); // returns true;

adn.util.hasValue(['a', 'b', 'd'], 'd'); // returns 'd';</pre>
    </td>
  </tr>
  </tbody>
</table>
