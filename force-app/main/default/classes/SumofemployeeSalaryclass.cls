public class SumofemployeeSalaryclass 
{
    public static void sumMethod(List<employee__c> emp)
    {
        Id accid ;
        decimal currentsalary , sumsalary = 0 ;
        string name ;
        for(employee__c em : emp)
        {
            accid = em.Account__c ;
            currentsalary = em.Salary__c ;
            system.debug('accid....'+accid);
            system.debug('currentsalary....'+currentsalary);
        }
        List<account> acclist = New List<Account>();
        acclist = [select name,id,Total_salary__c, (select name,id,salary__c from employees__r) from Account where id = :accid];
        system.debug('acclist...'+acclist);
        for(Account ac : acclist)
        {
            for(employee__c em : ac.employees__r)
            {
                    sumsalary = em.Salary__c ;
            }
        }
        system.debug('sumsalary.....'+sumsalary);
    }
}