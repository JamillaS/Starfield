//your code here

Particle[] particles = new Particle[30];
void setup()
{
	background(0);
	size(400, 400);
	
	//Particle[] particles = new Particle[30];
	for(int j = 1; j < 30; j ++)
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
		particles[j].move();
		particles[j].show();
		
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
		dX = 150;
		dY = 150;
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
		strokeWeight(3);
		fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		ellipse((float)dX,(float)dY, 5, 5);
	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		double dX,dY, dSpeed, dAngle;
		int dColor;
	}
	void move()
	{
		dX = dX + Math.cos(dAngle * dSpeed);
		dY = dY + Math.sin(dAngle * dSpeed);
	}
	void show()
	{
		fill(dColor, dColor, (int)(Math.random() * 255));
		ellipse((float)dX,(float)dY, 10, 10);
	}
}

