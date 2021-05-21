public class MyTHinkingClass 
{
    public static void MyMethod(string LastnameofAccount)
    {
        List<Account> acclist = New list<Account>();
        account ac = New Account ();
        ac.name = LastnameofAccount ;
        acclist.add(ac);
        system.debug('acclist....'+acclist);
        insert acclist ;
        
        List<Account> listofacc = New list<Account>();
        listofacc = [select name ,id from Account where name =: LastnameofAccount];
        system.debug('listofacc...'+listofacc);
    }
}