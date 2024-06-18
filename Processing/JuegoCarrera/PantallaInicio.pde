class PantallaInicio {
  private PFont tipografia;
  private PVector posicion;
  private PImage imagen, auto, auto2;

  public PantallaInicio(PVector posicion) {
    this.posicion=posicion;
    this.tipografia = createFont("Crang.ttf", 95);
    this.imagen = loadImage("fondo.png");
    this.auto = loadImage("autito.png");
    this.auto2 = loadImage("1111.png");
  }

  public void display() {
    image(imagen, this.posicion.x, this.posicion.y,845,800);
    image(auto, width/2-55, 500, 110, 110);
    image(auto2, 700, 500, 110,110);
    image(auto2, 50, 500, 110,110);
    fill(#FFF303);
    textFont(tipografia);
    textAlign(CENTER);
    text("ROAD FIGHTER", width/2, height/2-200);
    textSize(30);
    textAlign(CENTER);
    text("PRESIONE ENTER PARA COMENZAR", width/2, height/2+300);
  }
}
