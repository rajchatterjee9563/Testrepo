public class caseclass 
{
   public static void caseMethod(string LastNameOfAccount)
   {
       List<Account> acclist = New List<Account>();      
           account acc = new account();
           acc.name = LastNameOfAccount;
           acclist.add(acc);         
        system.debug('.....acclist'+acclist);
         insert acclist;
       List<Account> acc2 = New List<Account>();
       acc2 = [SELECT Name,Id From Account Where name =:LastNameOfAccount];
       system.debug('acc2...'+acc2);
       Id accountId;
       for (Account acc23: acc2)     
       {
           accountId = acc23.Id ;
           system.debug('acc2---'+accountId);
       } 
         List<case> clist = New List<case>(); 
         for(integer i = 0; i<2; i++)
         {           
            Case c = new Case();
            c.Status = 'Test'+ string.valueOf(i);
            c.Origin= 'Email';
            c.accountId =  accountId ;
            clist.add(c);       
         }
            system.debug('clist....'+clist);
            insert clist;
   } 
}