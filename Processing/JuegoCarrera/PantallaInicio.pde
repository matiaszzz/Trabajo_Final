class PantallaInicio { //Se crea la clase PantallaInicio que es la pantalla de inicio del juego
//Se definen sus atributos
  private PFont tipografia;
  private PVector posicion;
  private PImage imagen, auto, auto2;

//Constructor parametrizadp
  public PantallaInicio(PVector posicion) {
    this.posicion=posicion;
    this.tipografia = createFont("Crang.ttf", 95);
    this.imagen = loadImage("fondo.png");
    this.auto = loadImage("autito.png");
    this.auto2 = loadImage("1111.png");
  }

//Operacion display para visualizar la pantalla de inicio del juego
  public void display() {
    image(imagen, this.posicion.x, this.posicion.y,845,800); // Se muestra el fondo de la pantalla
    image(auto, width/2-55, 500, 110, 110); // Se muestra el personaje principal el auto rojo
    image(auto2, 700, 500, 110,110); // Se muestra el auto enemigo auto celeste
    image(auto2, 50, 500, 110,110); // Se muestra el auto enemigo auto celeste
    fill(#FFF303); //Se define el color del texto
    textFont(tipografia); //Se selecciona la tipo de texto tipografia
    textAlign(CENTER); // Se alinea el texto en el centro
    text("ROAD FIGHTER", width/2, height/2-200);
    textSize(30);
    textAlign(CENTER);
    text("PRESIONE ENTER PARA COMENZAR", width/2, height/2+300);
  }
}
