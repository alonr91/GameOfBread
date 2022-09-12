void keyReleased() {
  switch (key) {
  case 'g':
    if ((playingMovie==flour)||(playingMovie==Flour2water)) {//pausing the video when the user is stoping pouring
      myMovies[playingMovie].pause();
      videoTimeTotal+=videoTimeLocal;
      videoTimeLocal=0;
      pause = true;
    }
    break;
  case 'r':
    if (playingMovie==water||playingMovie==Water2Flour) {//pausing the video when the user is stoping pouring
      myMovies[playingMovie].pause();
      videoTimeTotal+=videoTimeLocal;
      videoTimeLocal=0;
      pause = true;
    }
    break;
  //case '7':
  //  if (playingMovie==Mixisng_Action) {//pausing the video when the user is stoping pouring
  //    myMovies[playingMovie].pause();
  //    videoTimeTotal+=videoTimeLocal;
  //    videoTimeLocal=0;
  //    pause = true;
  //  }
  //  break;
  case 'c':
    if (playingMovie==Baking_Batard) {//pausing the video when the user is stoping pouring
      myMovies[playingMovie].pause();
      videoTimeTotal+=videoTimeLocal;
      videoTimeLocal=0;
      pause = true;
    }
    break;
  case '9'://pausing proofing video
    if (playingMovie==proofing) {//pausing the video when the user is stoping pouring
      myMovies[playingMovie].pause();
      videoTimeTotal+=videoTimeLocal;
      videoTimeLocal=0;
      pause = true;
    }
    break;
  }
}
