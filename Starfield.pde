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
	for(int j = 0; j < 29; j ++)
	{
		
		particles[j] = new NormalParticle();
	}
	particles[29] = new OddballParticle();
	//particles[30] = new OddballParticle();
	for(int j = 0; j < particles.length; j++)
	{
		particles[j].move();
		particles[j].show();
	}
}
void draw()
{
	
	
	/*Particle[] particles = new NormalParticle[30];
	for (int j = 0; j < 29; j ++)
	{
		particles[j].move();
		particles[j].show();
		
	}*/

		
	
	
}
interface Particle
{
	public void move();
	public void show();
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
	public void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	public void show()
	{
		color(dColor);
		ellipse((float)dX,(float)dY, 10, 10);
	}
}

class OddballParticle implements Particle
{
	double dX,dY, dSpeed, dAngle;
	int dColor;
	OddballParticle()
	{
		dX = 250;
		dY = 250;
		dSpeed = 8.25;
		dAngle = (Math.random() * PI);
		dColor = color((int)(Math.random() * 255));
	}
	public void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);

	}
	public void show()
	{
		color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		ellipse((float)dX,(float)dY, 10, 10);
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

