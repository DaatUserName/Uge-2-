class Room {
  
  boolean light; //er lyset tændt eller slukket
  String name; // rummets navn
  float xPos, yPos; // x og y pos for rummets øverste venstre hjørne
  int height = 100; // konstant højden på rummet
  int width = 100; // konstant bredden på rummet

  Room(String n, boolean onOff, float x, float y) {
    name = n; 
    light = onOff;
    xPos = x;
    yPos = y;
  }

  void setLight(boolean l) {
    light = l;
  }

  void setName(String n) {
    name = n;
  }

  boolean getIsLightOn() {
    return light;
  }

  String getRoomName() {
    return name;
  }

  void drawRoom() {
    if (light)
      fill(205);
    else
      fill(100);
    rect(xPos, yPos, width, height);
    textSize(15);
    fill(250);
    text(name, xPos+10, yPos+30);
  }

  boolean isRoomClicked(float x, float y) {
    if ((x > xPos) && (x < xPos+width) && (y>yPos) && (y < yPos+height))
      return true;
    else 
    return false;
  }
  
  void drawRoof(){
  fill(50);
  triangle(50, 290, 250, 150, 450, 290);
  fill(205);
  }
}
