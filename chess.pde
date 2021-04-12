Board board;

void setup(){
  size(1500,800);
  background(0);
  noLoop();
  board = new Board();
}

void draw(){
  board.draw();
}
