void keyPressed() {

  switch (key) {
    //dgrsaf
  case '0':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 0;
    myMovies[playingMovie].play();
    //CountVideo++;
    break;

  case 'g'://Adding Flour
    if ((playingMovie!=1)&&(playingMovie!=3)) {

      if (playingMovie>-1) myMovies[playingMovie].stop();
      if (CountVideo==1) playingMovie = flour;
      else playingMovie = Flour2water;
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      if (!startingFlour)
      {
        videoTimeTotal=0;
        CountVideo++;
        startingFlour=true;
      }
    } else {

      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
      }
    }
    break; 
  case 'r'://Pouring water
    if ((playingMovie!=water)&&(playingMovie!=Water2Flour)) {
      if (playingMovie>-1) myMovies[playingMovie].stop();
      if (CountVideo==1) playingMovie = water;
      else playingMovie = Water2Flour;
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      if (!startingWater)
      {
        videoTimeTotal=0;
        CountVideo++;
        startingWater=true;
      }
    } else {
      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
      }
    }
    break;    



  case 'd'://adding salt
    if (Playing_salt==false) {//making sure to only playing the video one time
      if (playingMovie>-1) myMovies[playingMovie].stop();
      if (CountVideo==3)playingMovie = salt; //salt first 
      else playingMovie = salt2starter;//salt after starte
      if (!startingSalt)
      {
        videoTimeTotal=0;
        startingSalt=true;
      }
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      CountVideo++;
      Playing_salt=true;
    }


    break;

  case 'f'://adding starter
    if (Playing_starter==false) {//making sure to only playing the video one time
      if (playingMovie>-1) myMovies[playingMovie].stop();
      if (CountVideo==3)playingMovie = starter;//starter first
      else {
        playingMovie = starter2salt;
        Last_ingrient=starter2salt;//checking what is the last ingridient for timing the next video.
      }
      if (!startingStarter)
      {
        videoTimeTotal=0;
        startingStarter=true;
      }
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      CountVideo++;
      Playing_starter=true;
    }
    break; 
  case '6'://all ingrident
    //if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 9;
    //myMovies[playingMovie].play();
    //videoStartTime=currentMillis;
    CountVideo=6;
    break;
  case '9'://proofing
    if (playingMovie!=proofing) {

      if (playingMovie>-1) myMovies[playingMovie].stop();
      playingMovie = proofing;
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      if (!startingProofing)
      {
        videoTimeTotal=0;
        //CountVideo++;
        startingProofing=true;
        CountVideo=9;
      }
    } else {

      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
      }
    }
    break;
  case 'c'://baking
    if (playingMovie!=Baking_Batard) {

      if (playingMovie>-1) myMovies[playingMovie].stop();
      playingMovie = Baking_Batard;
      myMovies[playingMovie].play();
      videoStartTime=currentMillis;
      if (!startingBlowing)
      {
        videoTimeTotal=0;
        //CountVideo++;
        startingBlowing=true;
      }
    } else {

      if (pause) {
        videoStartTime=currentMillis;
        myMovies[playingMovie].play();
        pause = false;
      }
    }
    break;
  case '7'://mixing
    playingMovie=mixingAction;
    videoTimeTotal=0;
    CountVideo=7;
    //case '7'://mixing
    //  if (playingMovie!=mixingAction) {

    //    if (playingMovie>-1) myMovies[playingMovie].stop();
    //    playingMovie = mixingAction;
    //    myMovies[playingMovie].play();
    //    videoStartTime=currentMillis;
    //    if (!startingMixing)
    //    {
    //      videoTimeTotal=0;
    //      //CountVideo++;
    //      startingMixing=true;
    //    }
    //  } else {

    //    if (pause) {
    //      videoStartTime=currentMillis;
    //      myMovies[playingMovie].play();
    //      pause = false;
    //    }
    //  }
    //  break;
  case '8'://covering
    //if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = covering;
    CountVideo=8;
    //myMovies[playingMovie].play();
    break; 
  case 'a'://Droping_Dough
    //if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = Droping_Dough;
    CountVideo=10;
    // myMovies[playingMovie].play();
    break;
  case 'b'://Shaping_Batard
    //if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = Shaping_Batard;
    //myMovies[playingMovie].play();
    CountVideo=11;
    break;
  case '3':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = Good_Bread_Baked;
    CountVideo=13;
    // myMovies[playingMovie].play();
    break;
  case 't':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 16;
    myMovies[playingMovie].play();
    break;
  case 'h':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 17;
    myMovies[playingMovie].play();
    break; 
  case 'i':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 18;
    myMovies[playingMovie].play();
    break; 
  case 'j':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 19;
    myMovies[playingMovie].play();
    break;
  case 'k'://good bread
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 20;
    myMovies[playingMovie].play();
    break;
  case 'l'://dry bread
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 21;
    myMovies[playingMovie].play();
    break;
  case 'm'://wet bread
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 22;
    myMovies[playingMovie].play();
    break; 
  case 'n':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 23;
    myMovies[playingMovie].play();
    break; 
  case 'o':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 24;
    myMovies[playingMovie].play();
    break;
  case 'p':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 25;
    myMovies[playingMovie].play();
    break;
  case 'q':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 26;
    myMovies[playingMovie].play();
    break;
  case '2':
    if (playingMovie>-1) myMovies[playingMovie].stop();
    playingMovie = 27;
    myMovies[playingMovie].play();
    break; 
  case '+':
    if (mixingTime==15|| Wet_road==true||mixingTime==3&&good_road==false)playingMovie=Bad_Bread; //checking if the bread is bad
    else if  (Dry_road)playingMovie=Dry_Bread; 
    else playingMovie=Good_Bread_Baked;
    videoTimeTotal=0;
    CountVideo++;
    break; 
  case ' ':
    if (pause==false) {
      myMovies[playingMovie].pause();
      pause=true;
    } else {
      myMovies[playingMovie].play();
      pause=false;
    }
  }
}
