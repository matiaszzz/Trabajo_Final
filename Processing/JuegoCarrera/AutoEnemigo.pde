class AutoEnemigo extends GameObject{ // Se crea la clase AutoEnemigo
//Se definen sus atributos 
  private PImage imagen;
  private PVector velocidad;
  
  //Contructor parametrizado
  public AutoEnemigo(PVector posicion, PVector velocidad){
    super(posicion);
    this.velocidad=velocidad;
  }
  
  //Operacion para dibujar el AutoEnemigo
  public void display(){
  }
  
  //Operacion para mover el AutoEnemigo
  public void mover(){
  }
}
