public class Accountwithcasehandler 
{
    public static void handlerMethod(List<Account> acc)
    {
        List<case> coflist =New list<case>();
        for(Account ac : acc)
        {
            if(ac.name == 'Master Account')
            {
                case c = New case();
                c.status = ac.name ;
                c.origin = 'email';
                c.accountid = ac.Id ;
                coflist.add(c); 
            }
        }
        insert coflist ;
    }
}