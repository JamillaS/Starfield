//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double X,Y, Speed, Angle;
	int Color;
	NormalParticle()
	{
		X = x;
		Y = y;
		Speed = speed;
		Angle = angle;
		Color = color(Math.random() * 255);
	}
	void move()
	{
		X = X + Math.cos(Angle * Speed);
		Y = Y + Math.sin(Angle * Speed);
	}
	void show()
	{
		fill(Color);
		ellipse(X,Y, 10, 10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

