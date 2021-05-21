trigger Accountwithemployeetrigger on employee__c (after insert, after update)
{
    Id empid ;
    Decimal currentsalary = 0 , Maxsalary = 0 ;
    for(employee__c emp : Trigger.new)
    {
        empid = emp.Id ;
        currentsalary = emp.salary__c ;
        system.debug('empid.....'+empid);
        system.debug('currentsalary.....'+currentsalary);
        system.debug('Trigger.new.....'+Trigger.new);
    }
    List<employee__c> emplist = New list<employee__c>();
    emplist = [select name,id,salary__c, (select name,id,costly_employee__c from Accounts__r) from employee__c where id  = :empid];
    system.debug('emplist....'+emplist);
}