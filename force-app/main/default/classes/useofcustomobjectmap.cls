public class useofcustomobjectmap 
{
   public static void customMethod()
   {
       List<contact> conlist = New List<Contact>();
       List<Account> acclist = New List<Account>();
       acclist = [Select name,id, (select id,name from contacts) from Account where name ='suren' ];
       for(Account acc : acclist)
       {
           for(contact c : acc.contacts)
           {
               system.debug('c....'+c);
           }
       }
       system.debug('acclist...'+acclist);
   }
}