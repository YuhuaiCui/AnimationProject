// Daniel Cui
// Block 1-4B
// Feb 10, 2020

// Variables ============================
int bg1, bg2, bg3;
int fg1, fg2, fg3, fg4, fg5, fg6;
int bunny;
int cloud;


// Setup ==============================
void setup() {
  size(800, 600, P2D);

  // initialize cloud
  cloud = 100;

  // initialize background hills
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;

  // initialize foreground hills
  fg1 = -200;
  fg2 = 0;
  fg3 = 200;
  fg4 = 400;
  fg5 = 600;
  fg6 = 800;

  //initialize bunny
  bunny = 100;
}
// End setup ===============================


// Draw ==============================
void draw() {
  // sky
  background(3, 172, 255);
  
  // cloud
  cloud (cloud, 150);
  cloud = cloud + 1;
  if (cloud > 800) {
    cloud = -200;
  }

  // background hills
  fill(3, 255, 93);
  ellipse(bg1, 400, 400, 400);
  ellipse(bg2, 400, 400, 400);
  ellipse(bg3, 400, 400, 400);

  // move hills
  bg1 = bg1 + 2;
  bg2 = bg2 + 2;
  bg3 = bg3 + 2;
  fg1 = fg1 + 3;
  fg2 = fg2 + 3;
  fg3 = fg3 + 3;
  fg4 = fg4 + 3;
  fg5 = fg5 + 3;
  fg6 = fg6 + 3;

  // loop the hills
  if (bg1 > 1000) {
    bg1 = -200;
  }
  if (bg2 > 1000) {
    bg2 = -200;
  }
  if (bg3 > 1000) {
    bg3 = -200;
  }
  if (fg1 > 900) {
    fg1 = -100;
  }
  if (fg2 > 900) {
    fg2 = -100;
  }
  if (fg3 > 900) {
    fg3 = -100;
  }
  if (fg4 > 900) {
    fg4 = -100;
  }
  if (fg5 > 900) {
    fg5 = -100;
  }
  if (fg6 > 900) {
    fg6 = -100;
  }

  // foreground hills
  fill(4, 124, 22);
  ellipse(fg1, 400, 200, 200);
  ellipse(fg2, 400, 200, 200);
  ellipse(fg3, 400, 200, 200);
  ellipse(fg4, 400, 200, 200);
  ellipse(fg5, 400, 200, 200);
  ellipse(fg6, 400, 200, 200);

  // ground
  fill(255, 249, 72);
  rect(0, 400, 800, 200);

  // bunny
  fill(255, 255, 255);
  ellipse(bunny, 400, 200, 200); // head
  ellipse(bunny-50, 300, 50, 100); // left ear
  ellipse(bunny+50, 300, 50, 100); // right ear
  fill(0, 0, 0);
  ellipse(bunny-50, 375, 25, 25); // left eye
  ellipse(bunny+50, 375, 25, 25); // right eye
  ellipse(bunny, 450, 15, 15); // mouth

  // move bunny
  bunny = bunny +7;

  // loop bunny
  if (bunny > 900) {
    bunny = -200;
  }
}
// End draw =================================

void cloud (int x, int y) {
  pushMatrix();
  translate (x, y);
  fill(255, 255, 255);
  stroke(255, 255, 255);
  strokeWeight(0);
  rect(50, 50, 100, 100);
  ellipse(150, 100, 100, 100);
  ellipse(50, 100, 100, 100);
  ellipse(100, 50, 100, 100);
  popMatrix();
}
