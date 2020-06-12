# Utility Methods

adn.js provides utility methods that can be used in your creative's layouts to help you with its design.

The following methods can each be called from within a layout and provide the described functionality. The methods have been written specifically to work on as wide an array of browsers as possible.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Method and Basic Description</th>
      <th style="text-align:left">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isNumber(value)</code>
        </p>
        <p>Whether the passed-in value is a finite number.</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isInteger(value)</code>
        </p>
        <p>Whether the passed-in value is an integer.</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isArray(value)</code>
        </p>
        <p>Whether the passed-in value is an array.</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isObject(value)</code>
        </p>
        <p>Whether the passed-in value is an object.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Null and arrays return <code>false</code> and are not considered an object.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isTrue(value)</code>
        </p>
        <p>Whether the passed-in value is considered true.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Both the string value <code>&quot;true&quot;</code> and the boolean value <code>true</code> will
          return <code>true</code> here.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isFunction(value)</code>
        </p>
        <p>Whether the passed-in value is a function.</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isString(value)</code>
        </p>
        <p>Whether the passed-in value is a string.</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isBlankString(value)</code>
        </p>
        <p>Whether the passed-in value is a string and blank.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Only returns <code>true</code> for any value that is either an empty string
          or a string consisting solely of blank spaces.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isNotBlankString(value)</code>
        </p>
        <p>Whether the passed-in value is not a string that is blank.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Only returns <code>true</code> for any value that is a string consisting
          of at least one character that is not blank space.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isDefined(value)</code>
        </p>
        <p>Whether the passed-in value is defined.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Returns <code>false</code> for any value that is either <code>undefined</code> or <code>null</code>,
          otherwise <code>true</code>.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isLoopable(value)</code>
        </p>
        <p>Whether the passed-in value can be iterated over.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>Returns <code>true</code> for any array, HTML collection or NodeList.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.isTopWindow()</code>
        </p>
        <p>Whether the current window is the top window (not an Iframe).</p>
      </td>
      <td style="text-align:left">Returns <code>true</code> or <code>false</code>.</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.hasProperties(obj)</code>
        </p>
        <p>Whether the passed-in object has at least one property of its own.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>If the passed-in parameter is not an object, will return <code>false</code>.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.noop</code>
        </p>
        <p>Not a method as such -- is a property that contains an empty function.</p>
      </td>
      <td style="text-align:left">A property that is an empty function that can be used to perform no operations
        wherever a function is required.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.dimension(value)</code>
        </p>
        <p>Returns the passed-in value as a string representation of dimensions in
          pixels.</p>
      </td>
      <td style="text-align:left">
        <p>Here are some examples:</p>
        <ul>
          <li><code>12</code> will return <code>&apos;12px&apos;</code>
          </li>
          <li><code>&apos;12&apos;</code> will return <code>&apos;12px&apos;</code>
          </li>
          <li><code>&apos;12px&apos;</code> will return <code>&apos;12px&apos;</code>
          </li>
          <li><code>&apos;12%&apos;</code> will return <code>&apos;12%&apos;</code>
          </li>
          <li>Every other value passed in that is neither a number nor a string will
            be returned unaffected</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.trim(value)</code>
        </p>
        <p>Returns the passed-in value with any blank space at the beginning or end
          of the string removed.</p>
      </td>
      <td style="text-align:left">Returns the trimmed string. If not a string, returns the passed-in value
        unaffected.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.endsWith(value, endValue)</code>
        </p>
        <p>Whether the passed-in value ends with the passed-in endValue.</p>
      </td>
      <td style="text-align:left">
        <p>Returns <code>true</code> or <code>false</code>.</p>
        <p>If either the passed-in value or endValue is not a string, will return <code>false</code>.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getFrameElement()</code>
        </p>
        <p>Returns the current window&apos;s frame element.</p>
      </td>
      <td style="text-align:left">Wraps <code>window.frameElement</code> around a try-catch block to handle
        any browser cross-domain access restrictions.</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.createDelegate(instance, method)</code>
        </p>
        <p>Returns a delegate function that can be used with extra supplied arguments.</p>
      </td>
      <td style="text-align:left">Here&apos;s an example of how it works:</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.addEventListener(object, eventName, handler)</code>
        </p>
        <p>Adds an event listener for the supplied event on the object and calls
          the handler function.</p>
      </td>
      <td style="text-align:left">Here&apos;s an example of how it works:</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.detachEventListener(object, eventName, handler)</code>
        </p>
        <p>Removes the event listener for the supplied event and the handler on the
          object.</p>
      </td>
      <td style="text-align:left">Here&apos;s an example of how it works:</td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getWindowSize()</code>
        </p>
        <p>Gets the viewport&apos;s size.</p>
      </td>
      <td style="text-align:left">Returns an object like the following: <code>{width: 1000, height: 1500}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getWindowDims()</code>
        </p>
        <p>Gets the viewport&apos;s size.</p>
      </td>
      <td style="text-align:left">Works just like <code>adn.util.getWindowSize</code> but returns: <code>{w: 1000, h: 1500}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getScrollPos()</code>
        </p>
        <p>Gets the window&apos;s current scroll position.</p>
      </td>
      <td style="text-align:left">Returns an object like the following: <code>{left: 10, top: 1500}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getElementPosition(element)</code>
        </p>
        <p>Gets the element&apos;s position in the page.</p>
      </td>
      <td style="text-align:left">Returns an object like the following: <code>{left: 10, top: 1500}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.getElementDimensions(element)</code>
        </p>
        <p>Gets the element&apos;s dimensions.</p>
      </td>
      <td style="text-align:left">Returns an object like the following: <code>{w: 200, h: 300}</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.forEach(collection, callback)</code>
        </p>
        <p>Loops through the supplied collection and calls the callback on every
          item.</p>
      </td>
      <td style="text-align:left">
        <p>Works on anything that is iterable, i.e. any object, array, HTML Collection
          and NodeList.</p>
        <p>Here&apos;s two examples of how it works:</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.filter(collection, callback)</code>
        </p>
        <p>Returns an array of values that have passed the filter according to the
          callback.</p>
      </td>
      <td style="text-align:left">
        <p>Works on anything that is iterable, i.e. any object, array, HTML Collection
          and NodeList, but will return an array.</p>
        <p>Here&apos;s two examples of how it works:</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.find(collection, callback)</code>
        </p>
        <p>Returns the first value found to match the conditions in the callback.</p>
      </td>
      <td style="text-align:left">
        <p>Works on anything that is iterable, i.e. any object, array, HTML Collection
          and NodeList, and will return a value. Returns <code>null</code> if no match
          is found according to the callback criteria.</p>
        <p>Here&apos;s two examples of how it works:</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p><code>adn.util.hasValue(collection, value)</code>
        </p>
        <p>Whether the collection contains any element with the passed-in value.</p>
      </td>
      <td style="text-align:left">
        <p>Works on anything that is iterable, i.e. any object, array, HTML Collection
          and NodeList. Returns <code>true</code> or <code>false</code>.</p>
        <p>Here&apos;s two examples of how it works:</p>
      </td>
    </tr>
  </tbody>
</table>

