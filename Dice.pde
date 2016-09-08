Die Felix;
int totalDots;

void setup()
{
	noLoop();
	size(460,460);

}
void draw()
{
	background(255);
	for (int x = 50; x < 400; x += 100){
		for (int y = 50; y < 400; y += 100) {
			Felix = new Die(x,y);
			Felix.show();
		}
	}
	fill(0);
	text("The total sum of the dots is: " + totalDots,150,230);
}
void mousePressed()
{
	totalDots = 0;
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int numDots;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		numDots = (int)(Math.random() * 6) + 1;
		totalDots += numDots;
	}
	void show()
	{
		fill(196,0,0);
		rect(myX,myY,60,60,5);
		fill(255,255,255, 200);
		if (numDots == 1) {
			ellipse(myX + 30, myY + 30, 10, 10);
		}
		else if (numDots == 2) {
			ellipse(myX + 10, myY + 50, 10, 10);
			ellipse(myX + 50, myY + 10, 10, 10);
		}
		else if (numDots == 3) {
			ellipse(myX + 10, myY + 50, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 50, myY + 10, 10, 10);
		}
		else if (numDots == 4) {
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 50, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 50, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
		else if (numDots == 5) {
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 50, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 50, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
			ellipse(myX + 30, myY + 30, 10, 10);
		}
		else {
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 30, myY + 10, 10, 10);
			ellipse(myX + 50, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 50, 10, 10);
			ellipse(myX + 30, myY + 50, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
	}
}
