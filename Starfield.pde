//your code here

NormalParticle[] bits;

void setup()
{
	background(0);
	size(400, 400);
	/*
	bits = new NormalParticle[30];
	for(int i = 0; i < bits.length; i ++)
	{
		bits[i] = new NormalParticle();
	}
	*/
	Particle[] bits = new Particle[30];
	for(int j = 0; j < 29; j ++)
		bits[j] = new NormalParticle();
	bits[30] = new OddballParticle();
}
void draw()
{
	for(int i = 0; i < bits.length; i ++)
	{
		bits[i].move();
		bits[i].show();
	}
}

class NormalParticle
{
	double dX,dY, dSpeed, dAngle;
	int dColor;
	NormalParticle()
	{
		dX = 250;
		dY = 250;
		dSpeed = 8.25;
		dAngle = (Math.random() * PI);
		dColor = color((int)(Math.random() * 255));
	}
	void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	void show()
	{
		color(dColor);
		ellipse((float)dX,(float)dY, 10, 10);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	public void move()
	{

	}
	public void show()
	{

	}
}
class JumboParticle implements Particle
{
	public void move()
	{

	}
	public void show()
	{

	}
}

