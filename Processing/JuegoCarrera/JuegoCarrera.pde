private PantallaInicio pi;
private Escenario e;
private int estado;

void setup() {
  size(845, 800);
  pi = new PantallaInicio(new PVector (0, 0));
  estado = MaquinaEstados.INICIO;
  frameRate(90);
}

void draw() {
  //pi.display();
  switch (estado) {
  case MaquinaEstados.INICIO:
    {
      pi.display();
      break;
    }
  case MaquinaEstados.JUGANDO:
    {
      e.display();
    }
  }
}
public void keyPressed() {
  if (keyCode == ENTER && (estado == MaquinaEstados.INICIO || estado == MaquinaEstados.JUGANDO)) {
    estado = MaquinaEstados.JUGANDO;
    e = new Escenario(new PVector(-126, 5));
  }
}
