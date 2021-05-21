trigger employeeWithmapTrigger on employee__c (after insert) 
{
  id accountid ;
  decimal currentsalary , Maxsalary ;
    for(employee__c emp : Trigger.new)
    {
        accountid = emp.Account__c ;
        currentsalary = emp.Salary__c ;
        system.debug('accountid.....'+accountid);
        system.debug('currentsalary.....'+currentsalary);
    }
}