public class Accountandcontactclass 
{
    public static void Mymethod(string Lastnameofaccount)
    {
        List<Account> listofacc = New list<Account>();
        listofacc = [select name,id from account where name = :Lastnameofaccount];
        system.debug('listofacc...'+listofacc);
        if(listofacc.isempty())
        {
            list<account> insertaccount = New list<account>();
            Account acc = New Account();
            acc.Name = Lastnameofaccount ;
            insertaccount.add(acc);
            system.debug('insertaccount....'+insertaccount);
            insert acc ;
            List<account> acclist = New list<account>();
            acclist = [select name,id from account where name = :Lastnameofaccount];
            id accountid ;
            for(Account acc1 : acclist)
            {
                accountid = acc1.id ;
                system.debug('acclist....'+accountid);
            }
            List<contact> conoflist = New List<contact>();
            contact con = New contact();
            con.Lastname = Lastnameofaccount ;
            con.accountid = accountid ;
            conoflist.add(con);
            system.debug('conoflist....'+conoflist);
            insert conoflist ;
        }
        If(!listofacc.isempty())
        {
            List<account> accoflist = New list<account>();
            accoflist = [select name,id from account where name = :Lastnameofaccount];
            id accountid ;
            for(Account acc2 : accoflist)
            {
                accountid = acc2.id ;
                system.debug('accoflist....'+accountid);
            }
            List<contact> listofcon = New list<contact>();
            contact con = new contact();
            con.Lastname = Lastnameofaccount;
            con.AccountId = accountid ;
            listofcon.add(con);
            system.debug('listofcon...'+listofcon);
            insert listofcon ;
        }
    }
}