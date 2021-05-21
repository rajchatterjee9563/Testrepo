public class OptimizeClass 
{
   public static void Createcontact(string LastNameOfcontact,Integer noOfContact)
   {
       List<Contact> insertcon = New List<Contact>();
       for(integer i =0;i<noOfContact;i++)
            {
               contact con = New Contact();
               con.Firstname = 'Test'+ string.valueOf(i);
               con.LastName = LastNameOfcontact ;
               insertcon.add(con); 
            }
               system.debug('.....insertcon'+insertcon);
               insert insertcon;
   }
    public static void createcase(string LastnameofCase,Integer noOfcase)
    {
        List<case> insertcase = New List<Case>();
        for(integer i= 0;i<noOfcase;i++)
        {
            case c = New case();
            c.status = 'Test'+ string.valueOf(i);
            c.Origin ='Email' ;
            insertCase.add(c); 
        }
         system.debug('insertcase....'+insertcase);
         insert insertcase;
    }
     public static void createopportunity(string LastNameofopportunity,Integer noOfopportunity)
     {
         List<opportunity> insertopportunity = New List<opportunity>();
         for(integer i=0;i<noOfopportunity;i++)
         {
             opportunity opp = New opportunity();
             opp.Name = 'Test'+ string.valueOf(i);
             opp.name = LastNameofopportunity ;
             insertopportunity.add(opp);
         }
          system.debug('insertopportunity.....'+insertopportunity);
          insert insertopportunity;
     }
}