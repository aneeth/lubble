# lubble

A simple sinatra app to test some issues regarding the inability to update pre-populated html textareas while using Google Chrome on Android on pages that require HTTP Basic Authentication. 

### Issue
Pages that contain HTML textareas with editable pre-populated text are not properly editable if that page pops up the HTTP Basic Authentication modal box. It is editable if there is no HTTP Basic Authentication.
A workaround is to click the URL bar so that there is a screen overlay, and then click back on the textarea.

### Test App
[https://lubble.herokuapp.com/](https://lubble.herokuapp.com/)

### Versions
Android: 4.4.4, 6.0.1
Google Chrome: 52.x.x.x (no issues), 59.0.3071.125 
Chrome Beta: 60.0.3112.66 
