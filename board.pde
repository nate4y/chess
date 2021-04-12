class Board {
  private String fen;
  private final int rows = 8;
  private final int cols = 8;
  private final int width = 800;
  private final int height = 800;
  
  private final PImage pawn_w;
  private final PImage pawn_b;
  private final PImage knight_w;
  private final PImage knight_b;
  private final PImage bishop_w;
  private final PImage bishop_b;
  private final PImage rook_w;
  private final PImage rook_b;
  private final PImage queen_w;
  private final PImage queen_b;
  private final PImage king_w;
  private final PImage king_b;

  public Board() { 
    this.fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR";
    
    this.pawn_w = loadImage("assets/img/pawn_w.png");
    this.pawn_b = loadImage("assets/img/pawn_b.png");
    this.knight_w = loadImage("assets/img/knight_w.png");
    this.knight_b = loadImage("assets/img/knight_b.png");
    this.bishop_w = loadImage("assets/img/bishop_w.png");
    this.bishop_b = loadImage("assets/img/bishop_b.png");
    this.rook_w = loadImage("assets/img/rook_w.png");
    this.rook_b = loadImage("assets/img/rook_b.png");
    this.queen_w = loadImage("assets/img/queen_w.png");
    this.queen_b = loadImage("assets/img/queen_b.png");
    this.king_w = loadImage("assets/img/king_w.png");
    this.king_b = loadImage("assets/img/king_b.png");
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
    for(int i = 0; i < rows; ++i){
      for(int j = 0; j < cols; ++j){
        image(pawn_w, i * (height / rows) + 5, j * (width / cols) + 5, 90, 90);
      }
    }
  }
}
