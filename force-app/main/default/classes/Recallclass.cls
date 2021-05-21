public class Recallclass 
{
    public static void insertMethod(string LastNameofAccount)
    {
        List<Account> acclist = New List<Account>();
        acclist = [SELECT Name,Id From account Where Name =:LastNameofAccount];
        If(acclist.isEmpty())
        {
             list<account> insertedaccount = New List<Account>();
             Account acc = New Account(); 
             acc.Name = LastNameofAccount ;
             insertedaccount.add(acc);
             system.debug('insertedaccount...'+insertedaccount);
             insert acc;
            List<Account> acc2 = New List<Account>();
            acc2 = [SELECT Name,id From Account where Name =: LastNameofAccount];
            Id AccountId ;
            For(Account acc21 : acc2)
            {
                AccountId = acc21.Id ;
                system.debug('acc2---'+AccountId);
            }
            List<Case> insertCase2 = New List<Case>();
            for(integer i =0;i<2;i++)
            {
                Case c = New Case();
                c.Status = LastNameOfAccount+ string.valueOf(i);
                c.Origin= 'Email';
                c.accountId =  accountId ;
                insertCase2.add(c); 
            }
                system.debug('insertcase2....'+insertcase2);
                insert insertcase2 ;
        }
        else{      
               List<Account> insertaccount = New List<Account>();      
               account acc = new account();
               acc.name = LastNameOfAccount;
               insertaccount.add(acc);         
               system.debug('.....insertaccount'+insertaccount);
               insert insertaccount;
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
            c.Status = LastNameOfAccount+ string.valueOf(i);
            c.Origin= 'Email';
            c.accountId =  accountId ;
            clist.add(c);       
         }
            system.debug('clist....'+clist);
            insert clist;
        }
           List<Account>acc1list = New List<Account>();
           acc1list = [SELECT Name,Id From Account Where Name =:LastNameOfAccount];
           Id AccountId ;
           For(Account acc21 : acc1list)
            {
                AccountId = acc21.Id ;
                system.debug('acc1list....'+accountId);
            }
             List<Contact>conlist = New List<Contact>();
             for(integer i =0;i<2;i++)
            {
               contact con = New Contact();
               con.Firstname = 'Test'+ string.valueOf(i);
               con.LastName = LastNameOfAccount;
               con.AccountId =  AccountId ;
               conlist.add(con); 
            }
               system.debug('.....conlist'+conlist);
               insert conlist;
    }
}