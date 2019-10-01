int xstart = 50;
int ystart = 50;
int b= 50; //bredde på firkanten
int a = 1; //afstand mellem trekanterne
int m = 8; //antal firkanter på x aksen
int n = 8; //antal firkanter på y aksen
int shake = 3; // dette bestemmer hvor meget firkanterne kan rykke sig


void setup() {
  size(500, 500);
}

void draw() {
  clear();
  for (int j=0; j<n; ++j) {
    int y = ystart + j*b + j*a;
    for (int i=0; i<m; ++i) {
      int x = xstart + i*b + i*a;
      int d = (int)random(-shake, shake);
      fill(20+(x + y)*0.25, 0, 0);
      rect(x+d, y+d, b, b);
    }
  }
  //fill((100*(mouseX/100) + 100*(mouseY/100))*0.25,0,0);
  //rect((mouseX/100)*100, (mouseY/100)*100, 100, 100);
}
