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


	for (int j = 1; j < particles.length; j ++)
	{

		particles[0].move();
		particles[0].show();
		particles[1].move();
		particles[1].show();
		particles[j].move();
		particles[j].show();
		
	}

		noLoop();
	
	
}
void mousePressed()
{
	redraw();
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
		dX = 150;
		dY = 150;
		dSpeed = 8.25;
		dAngle = (Math.random() * PI);
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
		ellipse((float)dX,(float)dY, 3, 3);
	}
}

class OddballParticle implements Particle
{
	double dX,dY, dSpeed, dAngle;
	int dColor;
	OddballParticle()
	{
		dX = 100;
		dY = 100;
		dSpeed = 0.25;
		dAngle = ((int)(Math.random() * PI));
		dColor = color((int)(Math.random() * 255));
	}
	public void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);

	}
	public void show()
	{
		noStroke();
		fill(197);
		ellipse((float)dX,(float)dY, 50, 50);
	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		double dAngle = (Math.random() * PI);
		double dSpeed = 0.25;
	}
	void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	void show()
	{
		fill(255);
		ellipse((float)dX,(float)dY, 10, 10);
	}
}

