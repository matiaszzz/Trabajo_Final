private PantallaInicio pi;
void setup(){
  size(845,800);
  pi = new PantallaInicio(new PVector (0,0));
}

void draw(){
  pi.display();
}
