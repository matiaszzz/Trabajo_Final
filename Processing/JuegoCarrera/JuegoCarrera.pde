private PantallaInicio pi; 
private int estado;

void setup(){
  size(845,800);
  pi = new PantallaInicio(new PVector (0,0));
  estado = MaquinaEstados.INICIO;
}

void draw(){
  //pi.display();
  switch (estado){
    case MaquinaEstados.INICIO:{
      pi.display();
      break;
    }
    case MaquinaEstados.JUGANDO:{
    }
  }
}
