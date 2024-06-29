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
  }
  
  //Operacion display para dibujar el Auto
  public void display(){
  }
  
  //Operacion para mover el Auto
  public void mover(){
  }
}
