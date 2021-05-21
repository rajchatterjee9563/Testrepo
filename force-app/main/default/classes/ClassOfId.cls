public class ClassOfId 
{
    public static void MyPassMethod(string LastnameofAccount)
    {
        List<contact> conoflist = New list<contact>();
        Map<id, List<Contact>> mapofcon = New map <id, List<contact>>();
        List<Account> accoflist = New list<Account>();
        accoflist = [select id,(select name,id from contacts) from Account where name = :LastnameofAccount];
        system.debug('accoflist....'+accoflist);
        for(contact c : conoflist)
        {
           if(mapofcon.containskey(c.accountid))
           {
               mapofcon.get(c.AccountId).add(c);
           }
            else
            {
                mapofcon.put(c.AccountID, new List<Contact>{c});
            }
        }
        system.debug('mapofcon....'+mapofcon);
    }
}