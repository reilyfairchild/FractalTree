private double fractionLength = .9; 
private int smallestBranch = 10; 
private double branchAngle = .3;
private double grow = 5;  
public void setup() 
{   
	size(640,480);    
	//noLoop(); 
} 
public void draw() 
{   
	background(255);   
	stroke((int)(Math.random()*255));   
	line(320,480,320,380);   
	drawBranches(320, 380, grow, 3*Math.PI/2);
	grow += 1;

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	double angleR = angle + branchAngle;
	double angleL = angle - branchAngle;
	int x1 = (int)(branchLength*Math.cos(angleR) + x);
	int y1 = (int)(branchLength*Math.sin(angleR) + y);
	int x2 = (int)(branchLength*Math.cos(angleL) + x);
	int y2 = (int)(branchLength*Math.sin(angleL) + y);
	line(x, y, x1, y1);
	line(x, y, x2, y2);

	if(branchLength > smallestBranch){
		drawBranches(x1, y1, fractionLength * branchLength, angleR);
		drawBranches(x2, y2, fractionLength * branchLength, angleL);
		
	}    
} 


