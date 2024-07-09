class Auto extends GameObject implements IVisualizable { //Se crea la clase Auto
  //Se definen sus atributos
  private PVector velocidad;
  private PImage imagen;
  private int tamanio;
  private int score;

  //Se crea el constructor parametrizado
  public Auto(PVector posicion, PVector velocidad, int tamanio) {
    super(posicion);
    this.velocidad=velocidad;
    this.tamanio=tamanio;
    this.imagen=loadImage("autos1.png");
    this.score=0;
  }

  //Operacion display para dibujar el Auto
  public void display() {
    image(imagen.get(0, 0, 60, 72), this.posicion.x, this.posicion.y, tamanio, tamanio);
  }

  //Operacion para mover el Auto
  public void mover(int direccion) {
    if (direccion==0) {
      this.posicion.x-=this.velocidad.x*Time.getDeltaTime(frameRate);
    }
    if (direccion==1) {
      this.posicion.x+=this.velocidad.x*Time.getDeltaTime(frameRate);
    }
    if (direccion==2) {
      this.posicion.y-=this.velocidad.y*Time.getDeltaTime(frameRate);
    }
    if (direccion==3) {
      this.posicion.y+=this.velocidad.y*Time.getDeltaTime(frameRate);
    }
  }
  boolean obtenerMoneda(PVector moneda) {
    float d = dist(posicion.x, posicion.y, moneda.x, moneda.y);
    if (d<20) {
      score++;
      return true;
    } else {
      return false;
    }
  }
  public void colisionar(SpawnerAutos sp) {
    for (AutoEnemigo ae : sp.getAutos()) {
      float distanciaEntreAutos = this.posicion.dist(ae.getPosicion());
      if (distanciaEntreAutos<=30) {
        estado = MaquinaEstados.PERDIENDO;
        println("colisiono");
      } else {
        println("no colisiono");
      }
    }
  }
  public int getScore() {
    return this.score;
  }
}
