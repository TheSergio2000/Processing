int x=50;
int y=50;
int xPosition = 450;
int yPosition = 450;
int aPosition= 450;
int bPosition= 50;
int mPosition = 50;
int nPosition = 450;

int score = 10;

void setup() {
  size(500,500);
}
void draw() {
  background(0);
  if (keyPressed && (key == CODED)) {
  if (keyCode ==LEFT) {
    x = x-5;
  }else if (keyCode ==RIGHT){
    x = x+5;
 }
 }
 if (keyPressed && (key == CODED)) {
  if (keyCode ==UP) {
    y = y-5;
  }else if (keyCode ==DOWN){
    y = y+5;
 }
 }
if (x < xPosition){
  xPosition = xPosition-1;
}
if (y < yPosition) {
  yPosition = yPosition-1;
}
if (x > xPosition) {
  xPosition = xPosition+1;
}
if (y > yPosition) {
  yPosition = yPosition+1;
}
fill(#00FFF9);
ellipse(xPosition,yPosition,10,10);

if (x< aPosition){
  aPosition = aPosition-2;
}
if (y < bPosition) {
  bPosition = bPosition-2;
}
if (x > aPosition) {
  aPosition = aPosition+2;
}
if (y > bPosition) {
  bPosition = bPosition+2;
}
fill(#FF7300);
ellipse(aPosition,bPosition,10,10);

if (x< mPosition){
  mPosition = mPosition-3;
}
if (y < nPosition) {
  nPosition = nPosition-3;
}
if (x > mPosition) {
  mPosition = mPosition+3;
}
if (y > nPosition) {
  nPosition = nPosition+3;
}
if(score<7){
  fill(#FEFF00);
ellipse(mPosition,nPosition,10,10);}

if(x==xPosition && y==yPosition)
{
  score = score-1;
  x=50;
  y=50;
  xPosition = 450;
  yPosition = 450;
  aPosition = 450;
  bPosition = 50;
  mPosition = 50;
 nPosition = 450;
  
}
if(x==aPosition && y==bPosition)
{
  score = score-1;
  x=50;
  y=50;
  xPosition = 450;
  yPosition = 450;
  aPosition = 450;
  bPosition = 50;
  mPosition = 50;
 nPosition = 450;
}
if(x==mPosition && y==nPosition)
{
  score = score-1;
  x=50;
  y=50;
  xPosition = 450;
  yPosition = 450;
  aPosition = 450;
  bPosition = 50;
 mPosition = 50;
 nPosition = 450;
}

if (score==0){
  fill (255,0,0);
  text ("Game Over", 250,250);}

fill(0,0,255);
rect(x,y,10,10);
fill(0,255,0);
text("Vidas: " +score,400,400);
}
