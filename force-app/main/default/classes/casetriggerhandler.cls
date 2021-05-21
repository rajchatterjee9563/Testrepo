public class casetriggerhandler
{
    public static void insertcaseundermasteraccount(List<case> newcases, boolean isinsert,boolean isbefore)
    {
        string SubjectOfCase ;
        system.debug('newcases....'+newcases);
        system.debug('isinsert....'+isinsert);
        system.debug('isbefore....'+isbefore);
        if(isbefore == true && isinsert == true)
        {
            List<account> acclist = New list<account>();
            acclist = [select name,id from account where name = 'Master Account'];
            id accountid ;
            for(Account ac : acclist)
            {
                accountid = ac.id ;
                system.debug('accountid....'+accountid);
            }
            for(case ca : newcases)
            {
                system.debug('ca.....'+ca);
                ca.AccountId = accountid ;
                SubjectOfCase = ca.Subject ;
            }
             updateSubjectOfCaseOnAccount(SubjectOfCase , accountid); 
        }
    }
    public static void updateSubjectOfCaseOnAccount(string subjectofcase , id Masteraccountid)
    {
        system.debug('subjectofcase....'+subjectofcase);
        system.debug('Masteraccountid....'+Masteraccountid);
       /* List<Account> acclist = New list<Account>();
        acclist = [select id,name,Subject_Of_case__c from account where id = :Masteraccountid];
        system.debug('Masteraccountid.....'+Masteraccountid);
        for(Account ac : acclist)
        {
            ac.Subject_Of_case__c = subjectofcase ;
        }*/
        Account acc = New Account();
        acc.Subject_Of_case__c = subjectofcase ;
        acc.Id = Masteraccountid ;
        update acc ;
    }
}