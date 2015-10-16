//your code here

Particle[] particles;
void setup()
{
	background(0);
	size(400, 400);
	particles = new Particle[30];
	for(int j = 2; j < 30; j ++)
	{
		
		particles[j] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
	
	
}

void draw()
{
	
	background(0);


	for (int j = 2; j < particles.length; j ++)
	{
		
		//particles[0].move();
		//particles[0].show();
		particles[1].move();
		
		particles[j].move();
		
		particles[j].show();
		particles[1].show();
	}
	
	
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
	int dSize = 3;
	NormalParticle()
	{
		dX = 150;
		dY = 150;
		dSpeed = 8.25;
		dAngle = Math.random() * PI;
		dColor = color((int)(Math.random() * 255),255,(int)(Math.random() * 255));
	}
	public void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	public void show()
	{
		noStroke();
		color(dColor,dColor,dColor);
		ellipse((float)dX,(float)dY, dSize, dSize);
	}
}

class OddballParticle implements Particle
{
	double dX,dY, dSpeed, dAngle;
	int dColor;
	int dSize = 10;
	OddballParticle()
	{
		dX = 100;
		dY = 100;
		dSpeed = 8.25;
		dAngle = Math.random() * PI;
		dColor = color((int)(Math.random() * 255));
	}
	public void move()
	{
		dX = dX + Math.cos(5*dAngle * dSpeed);
		dY = dY + Math.sin(5*dAngle * dSpeed);

	}
	public void show()
	{
		noStroke();
		color(dColor,dColor,dColor);
		ellipse((float)dX,(float)dY, dSize, dSize);
	}
}

class JumboParticle extends NormalParticle
{
	
	JumboParticle()
	{
		dSize = 20;
	}
}

