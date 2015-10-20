//your code here

Particle[] particles;
void setup()
{
	background(0);
	size(400, 400);
	particles = new Particle[100];
	for(int j = 2; j < 100; j ++)
	{
		
		particles[j] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
	particles[1] = new JumboParticle();
	
	
}

void draw()
{
	
	background(0);


	for (int j = 0; j < particles.length; j ++)
	{
		
		particles[j].move();
		particles[j].show();
		particles[j].wrap();
	}
	
	
}

interface Particle
{
	public void move();
	public void show();
	public void wrap();
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
		dColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
	}
	public void move()
	{
		dX += Math.cos(dAngle * dSpeed);
		dY += Math.sin(dAngle * dSpeed);
	}
	public void show()
	{
		fill(dColor);
		ellipse((float)dX,(float)dY, dSize, dSize);
	}
	public void wrap()
	{
		if(dX > 400 || dX < 0 || dY > 400 || dY < 0)
		{
			dX = 150;
			dY = 150;
			dAngle = 3 * (Math.random() * PI);
			move();
			show();
		}
	}
}

class OddballParticle implements Particle
{
	double dX,dY, dSpeed, dAngle;
	int dColor;
	int dSize = 5;
	OddballParticle()
	{
		dX = 150;
		dY = 150;
		dSpeed = 8.25;
		dAngle = Math.random() * PI;
		dColor = color((int)(Math.random() * 255),255,(int)(Math.random() * 255));
	}
	public void move()
	{
		//dX += Math.sin(dAngle * dSpeed);
		//dY -= Math.cos(dAngle * dSpeed);
		dX += (int)(Math.random() * 5);
		dY += (int)(Math.random() * 3);
	}
	public void show()
	{
		
		fill(dColor,255,255);
		rect((float)dX,(float)dY, dSize, dSize);
	}
	public void wrap()
	{
		if( (dX > 400) || (dX < 0) || (dY > 400) || (dY < 0) )
		{
			dX = 150;
			dY = 150;
			dAngle = 3 * (int)(Math.random() * PI);
		}
	}
}

class JumboParticle extends NormalParticle
{
	
	JumboParticle()
	{
		dSize = 15;
	}
	public void show()
	{
		fill(dColor,255,255);
		ellipse((float)dX,(float)dY, dSize, dSize);
	}
}

