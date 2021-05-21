public class practiceclass 
{
   public static void practiceMethod()
   {
       List<Account> acclist = New list<Account>();
       acclist = [select name,id from Account where name='Parkstreet'];
       system.debug('acclist....'+acclist);
   }
}