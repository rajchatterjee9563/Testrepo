public class Mapclass
{
    public static void mapMethod()
    {       
        List<Contact> conlst = new List<Contact>();
        conlst = [Select id, name, Account.ID, accountId from Contact where AccountId != null Limit 1];
        system.debug(conlst[0].accountId+'------------'+conlst[0].account.Id);
        Map<Id, List<Contact>> conMap = new Map<Id, List<Contact>>();
        
        for(Contact c: conLst)
        {
            if(conMap.containsKey(c.account.ID))
            {
                conMap.get(c.account.ID).add(c);
            }
            else
            {
                conMap.put(c.AccountID, new List<Contact>{c});
            }
        }
        system.debug(conMap);
    }
}