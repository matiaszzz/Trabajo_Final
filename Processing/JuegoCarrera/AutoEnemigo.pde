class AutoEnemigo extends GameObject implements IVisualizable { // Se crea la clase AutoEnemigo
  //Se definen sus atributos
  private PImage imagen;
  private PVector velocidad;

  //Contructor parametrizado
  public AutoEnemigo(PVector posicion, PVector velocidad) {
    super(posicion);
    this.velocidad=velocidad;
    this.imagen = loadImage("enemigo.png");
  }

  //Operacion para dibujar el AutoEnemigo
  public void display() {
    image(imagen, this.posicion.x, this.posicion.y, 100, 100);
  }

  //Operacion para mover el AutoEnemigo
  public void mover() {
    this.posicion.y += velocidad.y*Time.getDeltaTime(frameRate);
    if (this.posicion.y > 800) {
      this.posicion.y=0;
    }
  }
  public PVector getPosicion() {
    return this.posicion;
  }
}
