//your code here

NormalParticle[] particles;

void setup()
{
	background(0);
	size(400, 400);
	/*
	particles = new NormalParticle[30];
	for(int i = 0; i < particles.length; i ++)
	{
		particles[i] = new NormalParticle();
		particles[0] = new OddballParticle();
	}
	*/
	Particle[] particles = new Particle[30];
	for(int j = 0; j < particles.length; j ++)
	{
		
		particles[j] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	//particles[30] = new OddballParticle();
	//for(int j = 0; j < 30; j++)
	//{
	//	particles[j].move();
	//}
}
void draw()
{
	
	//Particle[] particles = new Particle[30];
	for(int j = 0; j< particles.length; j ++)
	{
		particles[j].move();
		particles[j].show();
	}
	
}

class NormalParticle implements Particle
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
	public float move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	public int show()
	{
		color(dColor);
		ellipse((float)dX,(float)dY, 10, 10);
	}
}
interface Particle
{
	public int move();
	public int show();
}
class OddballParticle implements Particle
{
	int xPos;
	OddballParticle()
	{
		xPos = 250;
	}
	public int move()
	{
		return xPos;
	}
	public int show()
	{
		//color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		//ellipse((float)dX,(float)dY, 10, 10);
	}
}
class JumboParticle
{
	public void move()
	{

	}
	public void show()
	{

	}
}

