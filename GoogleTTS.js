function GoogleTTS()
{
}

GoogleTTS.prototype.speak = function(text, successCallback, errorCallback) {

    cordova.exec(successCallback,errorCallback,"GoogleTTS","speak", [text]);
};

GoogleTTS.install = function()
{
    if(!window.plugins)
    {
        window.plugins = {};
    }
    
    window.plugins.GoogleTTS = new GoogleTTS();
    return window.plugins.GoogleTTS;
};

cordova.addConstructor(GoogleTTS.install);