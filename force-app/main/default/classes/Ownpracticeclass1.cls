public class Ownpracticeclass1 
{
   public static void practiceMethod()
   {
       List<Account> acclist = New list<Account>();
       map<id,List<account>> accofmap = New map<id,List<account>>();
       system.debug('acclist...'+acclist);
       system.debug('accofmap...'+accofmap);
       acclist = [select name,id,(select name,id from contacts)from Account where name = 'Master Account'];
       system.debug('acclist....'+acclist);
       for(Account acc : acclist)
       {
           system.debug('acc....'+acc);
       }
   }
}