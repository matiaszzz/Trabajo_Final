import ddf.minim.*;
import processing.sound.*;
private Minim minim;
private AudioPlayer player;
private AudioPlayer coin;
private AudioPlayer inicio;
private PantallaInicio pi;
private Escenario e;
private Moneda m;
private Auto a;
private SpawnerAutos sp;
private int estado;

void setup() {
  size(845, 800);
  pi = new PantallaInicio(new PVector (0, 0));
  a = new Auto(new PVector(400, 740), new PVector(450, 450), 75);
  m = new Moneda(new PVector(int(random(200, 500)), int(random(0, 0))), new PVector(0, 200));
  estado = MaquinaEstados.INICIO;
  minim = new Minim(this);
  sp = new SpawnerAutos();
  player = minim.loadFile("tema.mp3");
  coin = minim.loadFile("coin.mp3");
  inicio = minim.loadFile("inicio.mp3");
  frameRate(90);
}

void draw() {
  //pi.display();
  switch (estado) {
  case MaquinaEstados.INICIO:
    {
      inicio.play();
      pi.display();
      break;
    }
  case MaquinaEstados.JUGANDO:
    {
      e.display();
      sp.generarAutos();
      m.display();
      m.mover();
      if (a.obtenerMoneda(m.getPosicion())) {
        coin.rewind();
        coin.play();
        m = new Moneda(new PVector(int(random(200, 500)), int(random(0, 0))), new PVector(0, 200));
      }
      a.display();
      a.colisionar(sp);
      fill(0);
      textSize(30);
      text("SCORE:  "+ a.getScore(), 750, 50);
      break;
    }
    case MaquinaEstados.PERDIENDO:
    {
      player.pause();
      pi.displayGameOver();
    }
  }
}
public void keyPressed() {
  if (keyCode == ENTER && (estado == MaquinaEstados.INICIO || estado == MaquinaEstados.JUGANDO)) {
    estado = MaquinaEstados.JUGANDO;
    inicio.pause();
    e = new Escenario(new PVector(-126, 5));
    player.play();
  }
  if (key=='a') {
    a.mover(0);
  }
  if (key=='d') {
    a.mover(1);
  }
  if (key=='w') {
    a.mover(2);
  }
  if (key=='s') {
    a.mover(3);
  }
}
