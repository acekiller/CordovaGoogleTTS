GoogleTTS
==========

This is a plugin for Cordova users that utilizes Google's TTS service. Currently this is only available for iOS, but it should soon be available for Android as well. Google's TTS service requires you to have an internet connection to utilize TTS.

Usage
----------

This plugin is used like most other Cordova plugins:<br/>
<br/>
1) Copy the GoogleTTS.h and GoogleTTS.m files to the plugins directory of your Xcode project.<br/>
2) In "Cordova.plist", add a new entry to the "Plugins" section with key=GoogleTTS and value=GoogleTTS<br/>
3) Copy the GoogleTTS.js file to somewhere in your web directory for Cordova<br/>
4) Add the script to your html:<br/>
*Make sure you give it the correct path to where you have the file<br/>
<br/>
<script src="../libs/GoogleTTS.js"></script><br/>
<br/>
5) Paste the code from "index.js" into your code and customize using your own words<br/>
*You currently need a '+' instead of a space. This will be changed soon.<br/>
<br/>
```javascript
window.plugins.GoogleTTS.speak("This+is+a+text+to+speech+test", speechSuccess, speechFail);
```

Contact
----------

If you have any questions/comments you can contact me here or at neilmonday [at] gmail.com

Thanks!