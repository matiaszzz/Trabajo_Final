class Auto{ //Se crea la clase Auto
//Se definen sus atributos
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  private int tamanio;
  
  //Se crea el constructor parametrizado
  public Auto(PVector posicion, PVector velocidad, int tamanio){
    this.posicion=posicion;
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
