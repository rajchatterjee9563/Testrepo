public class ownpracticeclass 
{
   public static void myMethod(string LastnameofAccount)
   {
       System.debug('LastnameofAccount....'+LastnameofAccount);
       list<Account> acclist = New list<Account>();
       acclist = [select name,id from account where name = :LastnameofAccount];
       system.debug('acclist....'+acclist);
       if(acclist.isempty())
       {
           List<Account> listofac = new list<Account>();
           Account acc = New account();
           acc.name = LastnameofAccount ;
           listofac.add(acc);
           system.debug('listofac...'+listofac);
           insert acc ;
           List<Account> idofacclist = New list<Account>();
           idofacclist = [select name,id from account where name = :LastnameofAccount];
           system.debug('idofacclist....'+idofacclist);
           id accountid ;
           for(Account ac : idofacclist)
           {
               accountid = ac.Id;
               system.debug('accountid....'+accountid);
           }
           List<contact> conoflist = New list<contact>();
           contact con = New contact();
           con.Lastname = LastnameofAccount ;
           con.AccountId = accountid ;
           conoflist.add(con);
           system.debug('conoflist....'+conoflist);
           insert conoflist;
       }
       if(!acclist.isempty())
       {
           list<account> aclist = New list<account>();
           aclist = [select name,id from account where name = :LastnameofAccount];
           system.debug('aclist....'+aclist);
           id accountid ;
           for(account a : aclist)
           {
               accountid = a.Id ;
               system.debug('accountid....'+accountid);
           }
           List<contact> clist = New list<contact>();
           contact c = New contact();
           c.LastName = LastnameofAccount ;
           c.AccountId = accountid ;
           clist.add(c);
           system.debug('clist....'+clist);
           insert clist ;
       }
   }
}