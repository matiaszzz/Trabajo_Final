private PantallaInicio pi;
private Escenario e;
private Moneda m;
private Auto a;
private int estado;

void setup() {
  size(845, 800);
  pi = new PantallaInicio(new PVector (0, 0));
  a = new Auto(new PVector(470, 730), new PVector(450, 450), 75);
  m = new Moneda(new PVector(int(random(420, 600)), int(random(0, 400))), new PVector(0, 300));
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
      m.display();
      a.display();
    }
  }
}
public void keyPressed() {
  if (keyCode == ENTER && (estado == MaquinaEstados.INICIO || estado == MaquinaEstados.JUGANDO)) {
    estado = MaquinaEstados.JUGANDO;
    e = new Escenario(new PVector(-126, 5));
  }
}
