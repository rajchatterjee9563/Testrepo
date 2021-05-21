public class OpportunityClass 
{
   public static void Mymethod(integer noOfcontact,string Lastnameofcontact)
   {
       List<contact> conoflist = New List<contact>();
       for(integer i= 0 ; i<2 ; i++)
       {
           contact con = New contact();
           con.firstname = 'Mr sourav'+string.valueof(i);
           con.Lastname = Lastnameofcontact ;
           conoflist.add(con);
       }
          system.debug('conoflist....'+conoflist);
          insert conoflist ;
   }
}