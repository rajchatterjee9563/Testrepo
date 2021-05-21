public class Doubleloopclass 
{
    public static void loopMethod()
    { 
        map<id, list<contact> > accmap = New map<id, list<contact> >();
        List<contact> conlist = New list<contact>();
        List<account> acclist = new list<account>();
        acclist = [Select name,id, (select id,name from contacts) from Account where name ='bigboss13'];
        for(account acc : acclist)
        {
            for(contact con : acc.contacts)
            {
                if(accmap.containsKey (acc.ID))
                {
                    accmap.get(acc.ID).add(con);
                }
                else
                {
                    accmap.put(acc.ID, new List<Contact>{con});
                }
                system.debug('con....'+con);
            }
        }
        system.debug('acclist...'+acclist);
    }
}