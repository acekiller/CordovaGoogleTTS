function saySomething() {
    //Tell the GoogleTTS plugin to say something
    window.plugins.GoogleTTS.speak("This+is+a+text+to+speech+test", speechSuccess, speechFail);
}

function speechSuccess()
{
    console.log("Speech Creation Success");
    media = new Media('tmp/tts.mp3');
    media.play();
}

function speechFail()
{
    console.log("Speech creation fail");
}
