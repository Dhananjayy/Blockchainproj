class testParent {
    static int k;
    public void print()
    {
      System.out.println(k);    
    }
   }

   class testChild2 extends testParent 
   {


    {
	
	 
	 
        testChild2.k =2;
    }
   }

public  class testChild1 extends testParent{
   
    {
	 // System.out.println("123313141414");
        testChild1.k = 1;
    }

    public static void main(String[] args)
    {
	
      new testChild1().print();
      
      
      new testChild2().print();

     new testChild1().print();
       
    }
 }
