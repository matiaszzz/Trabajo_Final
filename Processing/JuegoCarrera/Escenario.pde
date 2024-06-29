class Escenario extends GameObject implements IVisualizable { //Se crea la clase Escenario donde se muestra la pantalla del juego
  //Se definen sus atributos
  private PImage ruta, escena;

  //Contructor parametrizado
  public Escenario(PVector posicion) {
    super(posicion);
    this.ruta=loadImage("pista4.png");
    this.escena=loadImage("escena.png");
  }

  //Operacion para dibujar el escenario del juego
  public void display() {
    image(escena, 0, 0);
    image(ruta, this.posicion.x, this.posicion.y);
    image(ruta, this.posicion.x, this.posicion.y - ruta.height);
    this.posicion.y = this.posicion.y+150*Time.getDeltaTime(frameRate);
    if (this.posicion.y > ruta.height) {
      this.posicion.y=0;
    }
  }
}
