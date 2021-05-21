public class accountwithhandlerclass
{
    public static void handlerMethod(List<Account> acc)
    {
        List<contact> conlist = New list<contact>();
        id accid ;
        string accname ;
        for(Account ac : acc)
        {
            accid = ac.id ;
            accname = ac.contact_name__c ;
            system.debug('accid....'+accid);
            system.debug('accname....'+accname);
        }
        List<Account> acclist = New list<Account>();
        acclist = [select name,id,contact_name__c,(select name,id from contacts) from account where id = :accid];
        system.debug('acclist....'+acclist);
        for(Account a : acclist)
        {
            for(contact con : a.contacts)
            {
                if( accname != null)
                {  
                    System.debug('accname....'+accname);
                    Contact c = New Contact();
                    c.Lastname = accname ;
                    c.accountid  = accid ;
                    Conlist.add(c);
                    system.debug('conlist....'+conlist);                 
                }
            }
        }
         update conlist ;  
    }   
}