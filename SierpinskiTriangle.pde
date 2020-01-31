public void setup(){
	size(500,500);
	background(0);
}
public void draw(){
	fill(255);
	sierpinski(0,0,500);
}
//public void mouseDragged()//optional{

//}
public void sierpinski(int x, int y, int len) {
	fill(225);
	if (len<=30)
		triangle(x,y,x+(len/2),y+(len),x+len,y);
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y+(len/2),len/2);
	}
}