void draw() {
  //scale(0.4);
  // println(CountVideo, playingMovie);
  //println(videoTimeTotal/1000,videoDuration);
  background(0);
  fill (colourFont);
  textSize(40); 
  textFont(varelaFont);
  currentMillis=millis();  
  //flourAmount=360;
  //waterAmount=250;
  if (playingMovie==-1)
  {
    background(0);  
    fill(colourFont);
    textSize(40);
    text("הוסיפו מרכיבים על פי רצונכם ", width/2-250, height*5/6-50);
    text("בואו נאפה לחם! ", width/2-150, height*3/4-50);
    image(breadBG, width/2, height/3);
    image(drop, width*4/5-20, 230);
    image(wheet, width*4/5-20, 350);
    image(saltImage, width*4/5-20, 55);
    image(sourdough, width*4/5-20, 135);
    //playingMovie=mixingAction;
    //relation=1;
    //CountVideo=7;
    //playingMovie=covering;
    //CountVideo=8;
    //playingMovie=Baking_Batard;
    //CountVideo=12;
    //playingMovie=covering;
    //CountVideo=8;
    //playingMovie=proofing;
    //CountVideo=9;
    //playingMovie=Droping_Dough;
    //CountVideo=10;
    //playingMovie=Shaping_Wet_Dough;
    //playingMovie=Shaping_Batard;
    //CountVideo=11;
    //playingMovie=Dry_Bread_Shaping;
    //CountVideo=23;
    //playingMovie=Baking_Batard;
    //CountVideo=12;
    //playingMovie=Good_Bread_Baked;
    //playingMovie=Dry_Bread;
    //playingMovie=Bad_Bread;
    //CountVideo=13;
    //playingMovie=liquidDough;
    //CountVideo=21;
    //playingMovie=superDryDough;
    //CountVideo=22;
  }  

  if (playingMovie>-1) {
    //println(width, height);
    if ((playingMovie==flour)||(playingMovie==Flour2water))//adding the amount of flour
    {
      image(myMovies[playingMovie], width/2, height/4-20, 720*1.5, 360*1.5);//flour is adding first
      //image(wheet, 450, 650);//placing image of wheet symbol
      fill (colourFont);
      textSize(60); 
      textFont(varelaFont);
      text("הוסיפו קמח לפי רצונכם!", 250, height*3/4);
      //image(wheet, 450, 650);//placing image of wheet symbolgggggggggggg
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      if (!pause)videoTimeLocal=(currentMillis-videoStartTime);//running time of the video
      rectMode(CORNERS);
      fill (255);

      if (playingMovie==flour) rect(205, 300, 250, (300-8*(videoTimeLocal+videoTimeTotal+videoDuration)/1000));//scaling the flour input && first video is flour
      else rect(205, 300, 250, (300-13*(videoTimeLocal+videoTimeTotal+videoDuration)/1000));//scaling the flour input && second video is flour
      image(Scale, 215, 172);//placing image of Scale
      flourAmount=(int) map(videoTimeTotal, 0, videoDuration*1000/2, 0, 750);
      flourAmount=(flourAmount/20)*20;
      //text(flourAmount, 250, 275);
      image(drop, width*4/5-20, 230);
      image(wheet, width*4/5-20, 350);
      image(saltImage, width*4/5-20, 55);
      image(sourdough, width*4/5-20, 135);
      textSize(40); 
      textFont(varelaFont);
      strokeWeight(10);
      //rect(600, 750, lengthRect, 100);//scaling the flour input
      strokeWeight(7);  // Thicker
      textSize(25);
      fill(150);
      int scaleNum=50;
      int Num=150;
      int xScale=155;
      int yScale=250;
      text(Num, xScale, yScale);
      text(Num*2, xScale, yScale-scaleNum);
      text(Num*3, xScale, yScale-scaleNum*2);
      text(Num*4, xScale, yScale-scaleNum*3-5);
      text(Num*5, xScale, yScale-scaleNum*4-5);
    }


    if (playingMovie==water||playingMovie==Water2Flour)//pouring water
    {
      image(myMovies[playingMovie], width/2, height/4, 720*1.5, 360*1.5);
      fill (colourFont);
      textSize(60); 
      textFont(varelaFont);
      text("הוסיפו מים על פי רצונכם", 240, height*3/4);
      //image(drop, 550, 800);
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      if (!pause)videoTimeLocal=(currentMillis-videoStartTime);//running time of the video
      //println (videoTimeTotal);
      image(drop, width*4/5-20, 230);
      image(wheet, width*4/5-20, 350);
      image(saltImage, width*4/5-20, 55);
      image(sourdough, width*4/5-20, 135);
      rectMode(CORNERS);
      fill (35, 137, 218);
      if (playingMovie==water) rect(205, 300, 250, (300-15*(videoTimeLocal+videoTimeTotal+videoDuration)/1000));//scaling the water input && water is first
      else rect(205, 300, 250, (300-17.5*(videoTimeLocal+videoTimeTotal+videoDuration)/1000));//scaling the water input && water is second
      image(Scale, 215, 172);//placing image of Scale
      waterAmount=(int) map(videoTimeTotal+videoTimeLocal, 0, videoDuration*1000/2, 0, 520);
      waterAmount=(waterAmount/20)*20;
      //text(waterAmount, 250, 275);
      textSize(25);
      fill(150);
      int scaleNum=50;
      int Num=100;
      int xScale=155;
      int yScale=250;
      text(Num, xScale, yScale);
      text(Num*2, xScale, yScale-scaleNum);
      text(Num*3, xScale, yScale-scaleNum*2);
      text(Num*4, xScale, yScale-scaleNum*3-5);
      text(Num*5, xScale, yScale-scaleNum*4-5);
    }
    if (playingMovie==salt||playingMovie==salt2starter)//pouring water
    {
      if (playingMovie==salt)image(myMovies[playingMovie], width/2, height*1/3, 720*1.5, 360*1.5);
      else image(myMovies[playingMovie], width/2, height*1/3, 720*1.5, 360*1.5);
      image(drop, width*4/5-20, 230);
      image(wheet, width*4/5-20, 350);
      image(saltImage, width*4/5-20, 55);
      image(sourdough, width*4/5-20, 135);
      textSize(40); 
      textFont(varelaFont);
      text("הוספתם מלח!", 325, height*3/4);
    }
    if (playingMovie==starter||playingMovie==starter2salt)//pouring water
    {
      if (playingMovie==starter2salt) image(myMovies[playingMovie], width/2, height*0.4+1003, 720*1.5, 360*1.5);
      else image(myMovies[playingMovie], width/2, height*0.33, 720*1.5, 360*1.5);
      image(drop, width*4/5-20, 230);
      image(wheet, width*4/5-20, 350);
      image(saltImage, width*4/5-20, 55);
      image(sourdough, width*4/5-20, 135);
      textSize(40); 
      textFont(varelaFont);
      text("הוספתם מחמצת!", 300, height*3/4);
    } 
    //println(CountVideo);
    switch(CountVideo) {//progressing in video
    case 5://waiting for last ingriednt to be put.
      image(myMovies[playingMovie], width/2, height*1/4, 720*1.5, 360*1.5);
      videoDuration= myMovies[Last_ingrient].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration<=videoTime) {
        playingMovie=waterFlourStarterSalt;
        videoTimeTotal=0;
        CountVideo++;
      }  
      break;
    case 6://playing all the ingridient.
      playingMovie=waterFlourStarterSalt;
      myMovies[playingMovie].play();
      image(myMovies[playingMovie], width/2, height*1/4, 720*1.5, 360*1.5);
      if (Playing_All==false) {//creating a flag to set the time the mixising has started
        videoStartTime=currentMillis;
        Playing_All=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      relation=float(waterAmount)/float(flourAmount);//checking the relation of water to flour
      if (relation<=0.5) Dry_road=true;
      if (relation>=0.8) Wet_road=true;
      if (videoDuration<=videoTime) {
        playingMovie=mixingAction;
        videoTimeTotal=0;
        videoDuration=19;
        CountVideo++;
      }
      break;
    case 7: //Mixing time
      //println(relation, waterAmount, flourAmount);
      //println(videoTimeLocal/1000, videoTimeTotal/1000);
      //videoDuration= myMovies[playingMovie].duration();//time of the selected video
      //videoDuration=19;//time of the selected video
      //println(videoDuration);
      image(myMovies[playingMovie], width/2, height*1/4, 720*1.5, 360*1.5);
      image(mixer, width/2, 510);
      if (!pause)videoTimeLocal=(currentMillis-videoStartTime);//running time of the video
      textSize(30); 
      text("בשביל ללוש, בצעו תנועת סיבוב עם האצבע", 160, height*3/4-45);
      text("על גבי תמונת המיקסר", 427, height*3/4-10);
      //println(videoTimeTotal/1000, videoDuration);
      mixingTime=(int) map(videoTimeTotal+videoTimeLocal, 0, videoDuration*1000, 0, 15);//calaculating the interval of the mixing time
      mixingTime=(mixingTime/5)*5;
      if ((videoTimeTotal+videoTimeLocal)/1000>=videoDuration/3)//presenting mixing time
      {
        text("זמן לישה: "+mixingTime+"דקות", 330, 330);
        textSize(25);
        text("סימתי לישה", 635, 470);
        image(nextButtom, 700, 510);
      }
      //println(mixingTime);
      if (videoDuration+1<=(videoTimeTotal)/1000||finishMixing) {
        if (relation>1.4) { //checking if the dough is to much liquid
          playingMovie=liquidDough;
          videoTimeTotal=0;
          CountVideo=21;
        } else if (relation<0.34) {//checking if the dough is to much dry
          playingMovie=superDryDough;
          videoTimeTotal=0;
          CountVideo=22;
        } else
        {
          videoTimeTotal=0;
          playingMovie=covering;
          CountVideo++;
          Playing_All = false;
        }
      }
      break;
    case 8://playing covering the dough.
      image(myMovies[playingMovie], width/2, height/4, 720*1.5, 360*1.5);
      myMovies[playingMovie].play();
      text("מכסה את הלחם!", 300, height*3/4);
      if (Playing_All==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        videoDuration= myMovies[playingMovie].duration();
        Playing_All=true;
      }
      //time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration+2<=videoTime) {
        playingMovie=proofing;
        videoTimeTotal=0;
        CountVideo++;
        videoDuration=22;
        //videoDuration= myMovies[playingMovie].duration();
      }

      break;
    case 9://proofing
      println(videoTimeLocal/1000, videoTimeTotal/1000);
      image(myMovies[playingMovie], width/2, height/4, 720*0.9, 360*0.9);//defining the size and spot of the video
      image(clockT, width/2+150, 510);
      textSize(30); 
      text("נקשו על השעון כדי להתפיח את הבצק", 200, height*3/4-75);
      //time of the selected video
      if (!pause)videoTimeLocal=(currentMillis-videoStartTime);//running time of the video
      proofingTime=(int) map(videoTimeTotal+videoTimeLocal, 0, videoDuration*1000, 0, 10);//calaculating the interval of the mixing time
      proofingTime=(proofingTime/3)*3;
      if (((videoTimeTotal+videoTimeLocal)/1000>= videoDuration/3))
      {
        text("זמן תפיחה: "+proofingTime+" שעות", 330, 330);
        textSize(25);
        text("סימתי להתפיח", 635, 470);
        image(nextButtom, 700, 510);
      }
      if (videoDuration<=(videoTimeTotal+videoTimeLocal)/1000||finishProofing) {
        playingMovie=Droping_Dough;
        videoTimeTotal=0;
        CountVideo++;
        Playing_Droping_Dough=false;
        videoDuration= myMovies[playingMovie].duration();//time of the selected video
      }
      break;
    case 10://playing Droping the dough.
      playingMovie=Droping_Dough;
      image(myMovies[playingMovie], width/2, height*1/4, 720*2, 360*2);
      myMovies[playingMovie].play(); 
      text("הבצק תפח!", 350, height*3/4);
      if (Playing_Droping_Dough==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        Playing_Droping_Dough=true;
      }
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration+2<=videoTime) {//add liquid shaping 
        if (Wet_road)playingMovie=Shaping_Wet_Dough;
        if ((proofingTime==3&&mixingTime==10)||(proofingTime==6&&mixingTime==3)||(proofingTime==9&&mixingTime==6)||
          (proofingTime==9&&mixingTime==3)||(proofingTime==3&&mixingTime==3)||(proofingTime==6&&mixingTime==15)||
          (proofingTime==9 &&mixingTime==15)||(proofingTime==3 &&mixingTime==15)||(proofingTime==9 &&mixingTime==10)) {
          playingMovie=Shaping_Wet_Dough;//unproofed bread
          Wet_road=true;
        } else playingMovie=Shaping_Batard;
        videoTimeTotal=0;
        CountVideo++;
      }
      break;
    case 11://playing Shaping the dough.
      if (playingMovie==Shaping_Batard) image(myMovies[playingMovie], width/2, height*1/4, 720*3, 360*3);
      else image(myMovies[playingMovie], width/2+50, height*1/4+30, 720*2.5, 360*2.5);
      myMovies[playingMovie].play();
      text("עיצוב צורת הלחם…", 300, height*3/4);
      if (Playing_Shaping_Dough==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        Playing_Shaping_Dough=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration<=videoTime) {
        if (Dry_road)// If the dough is dry there will be an extra video displaying the dry shaped dough
        {
          playingMovie=Dry_Bread_Shaping;
          videoTimeTotal=0;
          CountVideo=23;
          videoDuration= myMovies[playingMovie].duration();//time of the selected video
        } else {
          playingMovie=Baking_Batard;
          videoTimeTotal=0;
          CountVideo++;
          videoDuration= 8;//time of the selected video
        }
      }
      break;
    case 12://Baking the dough
      //println(videoDuration+1, videoTimeTotal/1000);
      background(0);
      //videoDuration=8;//time of the selected video
      //print(videoTimeTotal/1000);
      // println(videoDuration);
      //image(OvenBG, width, height*2/3);
      image(myMovies[playingMovie], width/2, height*3/8, 720, 360);
      textSize(30);
      text("נשפו על הסימן כדי לאפות את הלחם", 250, height*3/4);
      image(Wind, width*0.3+10, height*7/8-15);
      if (!pause)videoTimeLocal=(currentMillis-videoStartTime);//running time of the video
      //println("videoTimeTotal:", videoTimeTotal/1000, "videoDuration:", videoDuration, "StartPause", StartPause/1000, "PauseTime", PauseTime, "videoStartTime", videoStartTime/1000);
      if (videoDuration<=videoTimeTotal/1000) {
        if (mixingTime==15|| Wet_road==true||mixingTime==3&&good_road==false)playingMovie=Bad_Bread; //checking if the bread is bad
        else if  (Dry_road)playingMovie=Dry_Bread; 
        else playingMovie=Good_Bread_Baked;
        videoTimeTotal=0;
        CountVideo++;
      }
      break;
    case 13://playing the finish bread.
      //playingMovie=Good_Bead_Baked;
      if (playingMovie==Bad_Bread)//presenting wet bread
      {
        image(myMovies[playingMovie], width/2+25, height/4+30, 720*1.25, 360*1.25);
        textSize(30); 
        text("הכנתם לחם רטוב - הלחם חסר צורה", 235, height*3/4-25);
        text("יותר מדי מים! נסו שנית", 315, height*3/4+35-25);
      } else if (playingMovie==Dry_Bread)
      {
        image(myMovies[playingMovie], width/2, height/4, 720*1.5, 360*1.5);
        textSize(30); 
        text("הכנתם לחם יבש - הלחם קשה", 260, height*3/4);
        text("יותר מדי קמח! נסו שנית", 305, height*3/4+35);
        //text("הכנתם לחם יבש - הלחם קשה, יותר מדי קמח! נסו שנית", 100, height*3/4);
      } 
       else//presenting good bread
      {
        image(myMovies[playingMovie], width/2, height/4+30, 720*1.25, 360*1.25);
        text("הכנתם לחם טוב - כל הכבוד! ", 170, height*3/4);
      }
      myMovies[playingMovie].play();

      if (Playing_Finish_Bread==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        Playing_Finish_Bread=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      //if (videoDuration+4<=videoTime) {
      //  background(0);
      //  videoTimeTotal=0;
      //  flourAmount=0;
      //  waterAmount=0;
      //  playingMovie=-1;
      //  CountVideo=1;
      //}
      break;
    case 21://playing the liquid dough.
      image(myMovies[playingMovie], width/2, height*1/4, 720*2, 360*2);
      myMovies[playingMovie].play();
      textSize(30); 
      text("הבצק רטוב מדי! נסו שנית", 250, height*3/4);
      if (playingLiquidDough==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        playingLiquidDough=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration+4<=videoTime) {
        background(0);
        videoTimeTotal=0;
        CountVideo=1;
      }
      break;
    case 22://playing dry dough.
      image(myMovies[playingMovie], width/2, height*1/4, 720*2, 360*2);
      myMovies[playingMovie].play();
      textSize(30); 
      text("הבצק יבש מדי! נסו שנית", 280, height*3/4);
      if (Playing_super_dry==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        Playing_super_dry=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration+2<=videoTime) {
        videoTimeTotal=0;
        CountVideo=1;
      }
      break;
    case 23://playing dry shaping dough.
      image(myMovies[playingMovie], width/2, height*1/4, 720*1.5, 360*1.5);
      myMovies[playingMovie].play();
      if (Playing_super_dry==false) {//creating a flag to set the time the video has started
        videoStartTime=currentMillis;
        Playing_super_dry=true;
      }
      videoDuration= myMovies[playingMovie].duration();//time of the selected video
      videoTime=float(currentMillis-videoStartTime)/1000;//running time of the video
      if (videoDuration+2<=videoTime) {
        playingMovie=Baking_Batard;
        CountVideo=12;
        videoDuration= 8;//time of the selected video
      }
      break;
    }
  }
}
