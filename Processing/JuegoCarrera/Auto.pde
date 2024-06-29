class Auto extends GameObject implements IVisualizable{ //Se crea la clase Auto
//Se definen sus atributos
  private PVector velocidad;
  private PImage imagen;
  private int tamanio;
  
  //Se crea el constructor parametrizado
  public Auto(PVector posicion, PVector velocidad, int tamanio){
    super(posicion);
    this.velocidad=velocidad;
    this.tamanio=tamanio;
    this.imagen=loadImage("autos1.png");
  }
  
  //Operacion display para dibujar el Auto
  public void display(){
    image(imagen.get(0, 0, 50, 72), this.posicion.x, this.posicion.y, tamanio,tamanio);
  }
  
  //Operacion para mover el Auto
  public void mover(){
  }
}
