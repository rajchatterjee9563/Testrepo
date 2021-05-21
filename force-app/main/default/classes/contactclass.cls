public class contactclass    
{
   public static void RandomMethod(integer noOfContact, string LastNameOfCon)
   {
       List<Contact> conlist = New List<Contact>();
       for(integer i = 0; i<noOfContact; i++)
       {
           contact con = new contact();
           con.Firstname = 'Test'+ string.valueOf(i);
           con.lastname = LastNameOfcon;
           conlist.add(con);
       }  
         system.debug('.....conlist'+conlist);
         insert conlist;
   }
}