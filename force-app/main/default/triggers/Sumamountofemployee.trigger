trigger Sumamountofemployee on employee__c (after insert, after update)
{
   SumofemployeeSalaryclass.sumMethod(trigger.new);
}