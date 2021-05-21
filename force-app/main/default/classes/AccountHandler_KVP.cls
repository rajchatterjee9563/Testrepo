public class AccountHandler_KVP 
{
	public static void createContact(List<Account> newAccounts, Boolean isAfter, Boolean isInsert)
    {
        if(isAfter == true && isInsert == true)
        {
            List<contact> conoflist = New list<Contact>();
            for(Account acc: newAccounts)
            {   
                for(integer i=0 ; i<2 ;i++)
                {
                    contact con = New contact();
                    con.LastName = Acc.name + string.valueof(i);
                    con.AccountId = acc.Id ;
                    conoflist.add(con);
                }
            }
            Insert conoflist;
        }
    }
}