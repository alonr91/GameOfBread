import processing.video.*;
import shenkar.SimplePhidgets.*;
Channel myTouchingSensor2;
Channel myTouchingSensor;
Channel my_Clock_touch;
Channel myBlowingSensor;
PFont f;
PFont  aharoniFont;  
PFont  gishaFont;  
PFont  varelaFont;  
PImage clockT;
PImage Baking;
PImage breadBG;
PImage woodBG;
PImage wheet;
PImage whiteCircle;
PImage scene2RecTop;
PImage scene2RecBottom;
PImage drop;
PImage mixer;
PImage nextButtom;
PImage OvenBG;
PImage Wind;
PImage Scale;
PImage saltImage;
PImage sourdough;

int  videoStartTime;
int StartPause;//integer for calculating the length of pasue video
int videoTimeLocal;
int videoTimeTotal;
int currentMillis = millis()/1000;
Movie[] myMovies;//array for movies 1
Movie[] clockMovie;

int playingMovie = -1;  // cuurently no movie playing
int CountVideo=1;

final int empty=0;
final int flour=1;
final int water=2;
final int Flour2water=3;
final int Water2Flour=4;
final int salt=5;
final int starter=6;
final int salt2starter=7;
final int starter2salt=8;
final int waterFlourStarterSalt=9;
final int mixingAction=10;
final int mixisngend=11;
final int covering=12;
final int proofing=13;
final int Droping_Dough=14;
final int Shaping_Batard=15;
final int Dry_Bread_Shaping=16;
final int Shaping_Wet_Dough=17;
final int FinalGoodSahpe=18;
final int Baking_Batard=19;
final int Good_Bread_Baked=20;
final int Dry_Bread=21;
final int Bad_Bread=22;
final int liquidDough=23;
final int superDryDough=24;
final int batardfinish=25;
final int Clock=26;
final int Bad_Breadfinal=27;
final int nothinghappent=28;
//int playingMovie = mixingAction;  // cuurently no movie playing
//int CountVideo=7;
//int playingMovie = covering;  // cuurently no movie playing
//int CountVideo=8;
//int playingMovie = Baking_Batard;  // cuurently no movie playing
//int CountVideo=12;
boolean flourScale=false;
boolean waterScale=false;
boolean pause=false;
boolean startingFlour=false;
boolean startingMixing=false;
boolean startingProofing=false;
boolean startingBlowing=false;
boolean startingWater=false;
boolean startingSalt=false;
boolean startingStarter=false;
boolean Playing_Flour=false;
boolean Playing_water=false;
boolean Playing_salt=false;
boolean Playing_starter=false;
boolean Playing_Mixing=false;
boolean Playing_All=false;
boolean Playing_Cover=false;
boolean Playing_Proofing=false;
boolean Playing_Droping_Dough=false;
boolean Playing_Shaping_Dough=false;
boolean Playing_Baking=false;
boolean Playing_Finish_Bread=false;
boolean Playing_super_dry=false;
boolean playingLiquidDough=false;
boolean Wet_road=false;
boolean Dry_road=false;
boolean good_road=false;
boolean finishMixing=false; //checking wehn the user is asked to move forward
boolean finishProofing=false; //checking when the user is asked to move forward
int Last_ingrient=salt2starter;//checking the last ingridient for timing the next video.
int colourFont=255;


void setup() {
//  size(1800, 1000);
  //size(900, 600);
  fullScreen();
  background(0);
  gishaFont = createFont("Gisha", 42, true); //defining text
  varelaFont = createFont("VarelaRound-Regular.ttf",42, true); //defining text
  myTouchingSensor = new Channel(this, "1129",2);
  myTouchingSensor2 = new Channel(this, "1129",3);
  my_Clock_touch=new Channel(this, "1104");  // opening a channel for the sensor, using it's part number (4 digits or 3 letterrs and 4 digits, e.g "LUX1000").
  myBlowingSensor = new Channel(this, "hub0000", 1, "analogInput");  // opening a channel for the sensor, using it's part number (4 digits or 3 letterrs and 4 digits, e.g "LUX1000").
  breadBG = loadImage("circle breads.png");//loading image
  breadBG.resize(350, 350);
  wheet = loadImage("flour.png");//loading image
  wheet.resize(64, 64);
  Wind = loadImage("Wind.png");//loading image
  Wind.resize(64, 64);
  drop = loadImage("water.png");//loading image
  drop.resize(64, 64);
  mixer = loadImage("Mixer.png");//loading image
  mixer.resize(64, 64);
  mixer = loadImage("Mixer.png");//loading image
  mixer.resize(64, 64);
  nextButtom = loadImage("nextButtom.png");//loading image
  nextButtom.resize(64, 64);
  OvenBG = loadImage("OvenBG.jpeg");//loading image
  OvenBG.resize(900, 600);
  clockT = loadImage("clock.png");//loading image
  clockT.resize(64, 54);
  Scale=loadImage("Scale.png");//loading image
  Scale.resize(340,340);
  saltImage=loadImage("salt.png");//loading image
  saltImage.resize(64, 64);
  sourdough=loadImage("sourdough.png");//loading image
  sourdough.resize(64, 64);
  imageMode(CENTER);
  // Load all movies
  myMovies = new Movie[28];
  myMovies[empty] = new Movie(this, "empty bowl.mp4");
  myMovies[1] = new Movie(this, "adding flour.mp4");
  myMovies[2] = new Movie(this, "pouring water.mp4");
  myMovies[3] = new Movie(this, "flour 2 water.mp4");
  myMovies[4] = new Movie(this, "water 2 flour.mp4");
  myMovies[5] = new Movie(this, "Adding salt.mp4");
  myMovies[6] = new Movie(this, "Adding sourdough.mp4");
  myMovies[7] = new Movie(this, "Adding salt to sourdough.mp4");
  myMovies[8] = new Movie(this, "Adding sourdough.mp4");
  myMovies[9] = new Movie(this, "all.mp4");
  myMovies[10] = new Movie(this, "Mixer in action.mp4");
  myMovies[11] = new Movie(this, "Mixer end.mp4");
  myMovies[12] = new Movie(this, "covering the dough.mp4");
  myMovies[13] = new Movie(this, "Growing Dough.mp4");
  myMovies[14] =  new Movie(this, "Dropping dough.mp4");
  myMovies[15] = new Movie(this, "shapping batard2.mp4");
  myMovies[16] = new Movie(this, "dry bread finish shaping.mp4");
  myMovies[17] = new Movie(this, "Shapping wet dough.mp4");
  myMovies[18] = new Movie(this, "ball proof - CORRECT.mp4");
  myMovies[19] = new Movie(this, "BakingBatard.mp4");
  myMovies[20] = new Movie(this, "batard bread - BAKED GOOD.mp4");
  myMovies[21] = new Movie(this, "dry bread3.mp4");
  myMovies[22] = new Movie(this, "Round bread went wrong.mp4");
  myMovies[23] = new Movie(this, "liquid dough BAD.mp4");
  myMovies[24] = new Movie(this, "Bad super dry dough.mp4");
  myMovies[25] = new Movie(this, "batard bread - BAKED GOOD.mp4");
  myMovies[26] = new Movie(this, "BAD ROUND BREAD.mp4");
  myMovies[27] = new Movie(this, "nothing happent.mp4");
}
void movieEvent (Movie m) {
  m.read();
}

int flourAmount;
float videoDuration=0;
int waterAmount;
int PlayingFlour=0;
float videoTime=0;
int mixingTime=0;
int proofingTime=0;
int PauseTime=0;
int lengthRect;
float relation;
//int videoTimeTotal;
