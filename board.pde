class Board {
  private String fen;
  private final int rows = 8;
  private final int cols = 8;
  private final int width = 800;
  private final int height = 800;
  private int[] board;
  
  private final int pawn_w = 1;
  private final int pawn_b = 2;
  private final int knight_w  = 3;
  private final int knight_b = 4;
  private final int bishop_w = 5;
  private final int bishop_b = 6;
  private final int rook_w = 7;
  private final int rook_b = 8;
  private final int queen_w = 9;
  private final int queen_b = 10;
  private final int king_w = 11;
  private final int king_b = 12;
  
  private PImage[] images;

  public Board() { 
    this.fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR";
    this.images = new PImage[13];
    this.board = new int[64];
    
    this.images[pawn_w] = loadImage("assets/img/pawn_w.png");
    this.images[pawn_b] = loadImage("assets/img/pawn_b.png");
    this.images[knight_w] = loadImage("assets/img/knight_w.png");
    this.images[knight_b] = loadImage("assets/img/knight_b.png");
    this.images[bishop_w] = loadImage("assets/img/bishop_w.png");
    this.images[bishop_b] = loadImage("assets/img/bishop_b.png");
    this.images[rook_w] = loadImage("assets/img/rook_w.png");
    this.images[rook_b] = loadImage("assets/img/rook_b.png");
    this.images[queen_w] = loadImage("assets/img/queen_w.png");
    this.images[queen_b] = loadImage("assets/img/queen_b.png");
    this.images[king_w] = loadImage("assets/img/king_w.png");
    this.images[king_b] = loadImage("assets/img/king_b.png");
}

  public void draw() {
    stroke(0,0,0,0);
    drawBoard();
    drawPieces();
  }
  
  private void drawBoard() {
    for(int i = 0; i < rows; ++i){
      for(int j = 0; j < cols; ++j){
        if ((i + j) % 2 == 0)
          fill(143, 176, 90);
        else
          fill(250);
        rect(i * (height / rows), j * (width / cols), height / rows, width / cols);
      }
    }
  }
  
  private void drawPieces() {
    int currrent = 0;
    
    for(int i = 0; i < rows; ++i){
      for(int j = 0; j < cols; ++j){
        image(images[8], i * (height / rows) + 5, j * (width / cols) + 5, 90, 90);
      }
    }
  }
  
  private int fenToInt(char piece) {
    switch(piece){
      case 'p':
        return 1;
      default:
         return 0;
    }
  }
}
