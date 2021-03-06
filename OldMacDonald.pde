//Teagan Mucher, Block 4 AP CS, "OldMacDonald"

public void setup()
{
	Farm farm = new Farm();
	farm.animalSounds();
}
interface Animal 
{    
   public String getSound();        
   public String getType(); 
}   
class Cow implements Animal 
{     
 	protected String myType;     
    protected String mySound;      
    public Cow(String type, String sound)    
    {         
       myType = type;         
       mySound = sound;     
    }     
    public Cow()    
    {         
       myType = "unknown";         
       mySound = "unknown";     
    }      
    public String getSound(){return mySound;}     
    public String getType(){return myType;} 
}
class namedCow extends Cow
{
	protected String myName;
	public namedCow(String type, String name, String sound)    
    {         
       myType = type;         
       mySound = sound;     
       myName = name;
    }
    public String getName(){return myName;}
}
class Chick implements Animal
{
	private String myType;
	private String mySound;

	public Chick(String type, String sound1, String sound2)
	{
		myType = type; 
		if (Math.random()<=.5)
		{        
     		mySound = sound1;
     	}
     	else
     	{
     		mySound = sound2;
     	}
	}
	public Chick()    
    {         
     	myType = "unknown";         
     	mySound = "unknown";     
    }      
    public String getSound(){return mySound;}     
    public String getType(){return myType;} 
}
class Pig implements Animal
{
	private String myType;
	private String mySound;
	public Pig(String type, String sound)
	{
		myType = type;         
     	mySound = sound;  
	}
	public Pig()    
    {         
     	myType = "unknown";         
     	mySound = "unknown";     
    }      
    public String getSound(){return mySound;}     
    public String getType(){return myType;} 
}
class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()     
  {       
    aBunchOfAnimals[0] = new namedCow("cow", "Bessie", "moo");           
    aBunchOfAnimals[1] = new Chick("chick", "cheep", "cluck");       
    aBunchOfAnimals[2] = new Pig("pig","oink");    
  }         
  public void animalSounds()    
  {       
    for (int nI=0; nI < aBunchOfAnimals.length; nI++)      
    {          
     System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());       
    }    
    System.out.println( "The cow is known as " + ((namedCow)aBunchOfAnimals[0]).getName() );
  } 
}
