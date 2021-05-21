public class map3class 
{
   public static void mapmethod()
   {
       map<id, Account> macc = New map<id, Account>();
       List<Account> acclist = New List<Account>([select name, id from Account]);
       system.debug('acclist....'+acclist);
       for(Account acc : acclist)
       {
           macc.put(acc.id, acc);
       }
        system.debug('macc....'+macc);
   }
}