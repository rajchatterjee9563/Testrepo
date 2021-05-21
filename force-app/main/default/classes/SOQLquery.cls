public class SOQLquery 
{
    public static void soqlmethod()
    {
        list<account> acclist = new list<account>();
        acclist=[select id,name from account];
        system.debug('acclist......'+acclist);
    }
                
}