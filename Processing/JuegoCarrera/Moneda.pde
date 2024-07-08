class Moneda extends GameObject implements IVisualizable {
  private PImage imagen;
  private PVector velocidad;

  public Moneda(PVector posicion, PVector velocidad) {
    super(posicion);
    this.imagen=loadImage("moneda.png");
    this.velocidad = velocidad;
  }
  public void display() {
    image(imagen, this.posicion.x, this.posicion.y, 60, 40);
  }
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
