class SpawnerAutos { // Se crea la clase SpawnerAutos
  // Se asigna una array de autos enemigos
  private AutoEnemigo[] autos;

  //Constructor por defecto
  public SpawnerAutos() {
    autos = new AutoEnemigo[3];
    for (int i=0; i<autos.length; i++) {
      autos[i] = new AutoEnemigo(new PVector(int(random(220, 520)), int(random(i*height/autos.length, 0))), new PVector(0, 150));
    }
  }

  // Metodo para generar los autos enemigos
  public void generarAutos() {
    for (int i=0; i<autos.length; i++) {
      autos[i].display();
      autos[i].mover();
    }
  }
}
