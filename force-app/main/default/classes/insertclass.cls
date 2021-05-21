public class insertclass 
{
   public static void insertMethod(string LastNameOfAccount)
   {
       List<Account> acclist = New List<Account>();      
           account acc = new account();
           acc.name = LastNameOfAccount;
           acclist.add(acc);         
        system.debug('.....acclist'+acclist);
         insert acclist;
       List<Account> acc1 = New List<Account>();
       acc1 = [SELECT Name,Id From Account Where name =:LastNameOfAccount];
       system.debug('acc1...'+acc1);
       Id accountId;
       for (Account acc23: acc1)     
       {
           accountId = acc23.Id ;
           system.debug('acc2---'+accountId);
       } 
         List<Contact> conlist = New List<Contact>();
         for(integer i = 0; i<2; i++)
         {           
            Contact con = new contact();
            con.Firstname = 'Test'+ string.valueOf(i);
            con.Lastname = 'Ramesh';
            con.accountId =  accountId ;
            conlist.add(con);       
         }      
         system.debug('.....conlist'+conlist);
         insert conlist;
         List<opportunity> opplist = New List<opportunity>();
         for(integer i = 0; i<2; i++)
         {           
            opportunity opp = new opportunity();
            opp.Name = LastNameofAccount + string.valueOf(i);
            opp.StageName = 'prospecting' ;
            opp.CloseDate = Date.today (); 
            opp.accountId =  accountId ;
            opplist.add(opp);       
         }      
         system.debug('.....opplist'+opplist);
         insert opplist;
     }
}