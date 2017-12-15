boolean isAnimate = true;
int currentFrame = 1;
float a, R, G, B;
int background = 200;
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in ;


void setup() {
    fullScreen();
    smooth();
    file = new SoundFile(this, "01.mp3");
    file.play(1);
    amp = new Amplitude(this); in = new AudioIn(this, 0); in .start();
    amp.input(file);
    frameRate(9);
}
void draw() {
    fill(background, 0);
    if (isAnimate) {
        switch (currentFrame) {
            case 1:
                more();
                break;
            case 2:
                more();
                break;
            case 3:
                more();
                break;
            case 4:
                more();
                break;
            case 5:
                more();
                break;
            case 6:
                more();
                break;
            case 7:
                more();
                break;
            case 8:
                more();
                break;
            case 9:
                more();
                break;
            case 10:
                more();
                break;
            case 11:
                more();
                break;
            case 12:
                more();
                break;
            case 13:
                more1();
                break;
            case 14:
                more1();
                break;
            case 15:
                more1();
                break;
            case 16:
                more1();
                break;
            case 17:
                more1();
                break;
            case 18:
                more1();
                break;
            case 19:
                more1();
                break;
            case 20:
                more1();
                break;
            case 21:
                more1();
                break;
            case 22:
                more1();
                break;
            case 23:
                more1();
                break;
            case 24:
                more1();
                break;

        }

        currentFrame++;
        if (currentFrame > 24) {
            currentFrame = 1;
        }
    } else {
        more();
    }
}

void keyPressed() {
    isAnimate = !isAnimate;
}

void more() {
    fill(0);
    rect(-1, -1, width + 1, height + 1);
    translate(width / 2, height / 2);
    for (int i = 0; i < 360; i += 2) {
        float angle = sin(i + a) * 50;
        float x = sin(radians(i)) * (150 + angle);
        float y = cos(radians(i)) * (150 + angle);
        float x2 = sin(radians(i)) * (100 + angle);
        float y2 = cos(radians(i)) * (100 + angle);

        R = (((float) 400 / width) + angle) + 400 * sin(i + a * 3);
        G = (50 + angle) + random(200) * sin(i + a * 3);
        B = (((float) 255 / height) + angle) + random(100) * sin(i + a * 3);
        stroke(R, G, B);
        fill(R, G, B);
        ellipse(x, y, angle / 6, angle / 6);
        ellipse(y2, x2, 4, 4);
        line(x, y, x2, y2);

    }
    a += 0.02;
    println(amp.analyze());
    if (amp.analyze() < 0.2) {
        for (int i = 0; i < 360; i += 2) {
            float angle = sin(i + a) * 50;
            float x = sin(radians(i)) * (75 + angle);
            float y = cos(radians(i)) * (75 + angle);
            float x2 = sin(radians(i)) * (150 + angle);
            float y2 = cos(radians(i)) * (150 + angle);
            ellipse(x, y, angle / 6, angle / 6);
            ellipse(y2, x2, 4, 4);
            line(x, y, x2, y2);
        }
    } else if (amp.analyze() > 0.2) {

        for (int i = 0; i < 360; i += 2) {
            float angle = sin(i + a) * 50;
            float x = sin(radians(i)) * (100 + angle);
            float y = cos(radians(i)) * (100 + angle);
            float x2 = sin(radians(i)) * (200 + angle);
            float y2 = cos(radians(i)) * (200 + angle);
            ellipse(x, y, angle / 6, angle / 6);
            ellipse(y2, x2, 2, 2);
            line(x, y, x2, y2);
        }
    }
}




void more1() {
    fill(50, background);
    rect(-1, -1, width + 1, height + 1);
    translate(width / 2, height / 2);
    for (int i = 0; i < 360; i += 2) {
        float angle = sin(i + a) * 50;

        float x = sin(radians(i)) * (150 + angle);
        float y = cos(radians(i)) * (150 + angle);
        float x2 = sin(radians(i)) * (100 + angle);
        float y2 = cos(radians(i)) * (100 + angle);

        R = (((float) 100 / width) + angle) + 200 * sin(i + a * 3);
        G = (50 + angle) + 100 * sin(i + a * 3);
        B = (((float) 100 / height) + angle) + 100 * sin(i + a * 3);
        stroke(R, G, B);
        fill(R, G, B);
        ellipse(x, y, angle / 6, angle / 6);
        ellipse(y2, x2, 4, 4);
        line(x, y, x2, y2);
    }
    a += 0.02;
    println(amp.analyze());
    if (amp.analyze() < 0.2) {

        for (int i = 0; i < 360; i += 2) {
            float angle = sin(i + a) * 50;
            float x = sin(radians(i)) * (300 + angle);
            float y = cos(radians(i)) * (300 + angle);
            float x2 = sin(radians(i)) * (250 + angle);
            float y2 = cos(radians(i)) * (250 + angle);
            ellipse(x, y, angle / 6, angle / 6);
            ellipse(y2, x2, 4, 4);
            line(x, y, x2, y2);
        }
    } else if (amp.analyze() > 0.2) {

        for (int i = 0; i < 360; i += 2) {
            float angle = sin(i + a) * 50;
            float x = sin(radians(i)) * (200 + angle);
            float y = cos(radians(i)) * (200 + angle);
            float x2 = sin(radians(i)) * (430 + angle);
            float y2 = cos(radians(i)) * (430 + angle);
            ellipse(x, y, angle / 6, angle / 6);
            ellipse(y2, x2, 3, 3);
            line(x, y, x2, y2);
        }
    }
}