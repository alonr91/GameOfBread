int proofingTimer;
int bakingTimer;
void sensorChange() {// a function that control the videos that is playing by phidget sensors
  if (CountVideo==7) 
  {//mixing 
    int touchingVal = myTouchingSensor.read();  // get sensor value between 0 and 1000
    if (touchingVal>900)
    {
      if (Playing_Mixing==false) {
        myMovies[playingMovie].play();
        videoStartTime=currentMillis;
        //println(videoStartTime);
        Playing_Mixing=true;
      }
      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
      }
    } else {
      myMovies[playingMovie].pause();
      videoTimeTotal+=videoTimeLocal;
      videoTimeLocal=0;
      pause = true;
    }
    //Checking if the user requested to progress with the videos
    int touchingVal2 = myTouchingSensor2.read();  // get sensor value between 0 and 1000 
    if (touchingVal2>900)
    {
      finishMixing=true;
    }
  }
  if (CountVideo==9)//proofing Video
  {
    int val = my_Clock_touch.read();
    //println(val);
    if (val<=490||val>=510) {
      if (Playing_Proofing==false) {
        videoStartTime=currentMillis;
        Playing_Proofing=true;
      }
      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
        proofingTimer = millis();
        println(millis(), "playing proofing");
      }
    } else {
      if (!pause) {
        if (millis() - proofingTimer > 1000) {
          myMovies[playingMovie].pause();
          videoTimeTotal+=videoTimeLocal;
          videoTimeLocal=0;
          pause = true;
        println(millis(), "pausing proofing");
        }
      }
    }
    //Checking if the user requested to progress with the videos
    int touchingVal2 = myTouchingSensor2.read();  // get sensor value between 0 and 1000 
    if (touchingVal2>900)
    {
      finishProofing=true;
    }
  }
  if (CountVideo==12)//baking Video
  {
    int val = myBlowingSensor.read();
    //println(val);
    if (val>=789) {
      if (Playing_Baking==false) {
        videoStartTime=currentMillis;
        Playing_Baking=true;
      }
      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
        bakingTimer = millis();
      }
    } else {
      if (!pause) {
        if (millis() - bakingTimer > 1000) {
          myMovies[playingMovie].pause();
          videoTimeTotal+=videoTimeLocal;
          videoTimeLocal=0;
          pause = true;
        }
      }
    }
  }
} 
