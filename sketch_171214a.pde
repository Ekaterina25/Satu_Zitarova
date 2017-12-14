float a, R, G, B;
int background = 0;
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in ;


void setup() {
   fullScreen();
   file = new SoundFile(this, "1.mp3");
    file.play(1);
    amp = new Amplitude(this); in = new AudioIn(this, 0); in .start();
    amp.input(file);
}