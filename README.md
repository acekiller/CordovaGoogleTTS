GoogleTTS
==========

This is a plugin for Cordova users that utilizes Google's TTS service. Currently this is only available for iOS, but it should soon be available for Android as well. Google's TTS service requires you to have an internet connection to utilize TTS.

Usage
==========

This plugin is used like most other Cordova plugins:

1) Copy the GoogleTTS.h and GoogleTTS.m files to the plugins directory of your Xcode project.
2) In "Cordova.plist", add a new entry to the "Plugins" section with key=GoogleTTS and value=GoogleTTS
3) Copy the GoogleTTS.js file to somewhere in your web directory for Cordova
4) Add the script to your html:
*Make sure you give it the correct path to where you have the file

<script src="../libs/GoogleTTS.js"></script>

5) Paste the code from "index.js" into your code and customize using your own words
*You currently need a '+' instead of a space. This will be changed soon.

window.plugins.GoogleTTS.speak("This+is+a+text+to+speech+test", speechSuccess, speechFail);

Contact
==========

If you have any questions/comments you can contact me here or at neilmonday [at] gmail.com

Thanks!