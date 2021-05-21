trigger employeetotalvaluetrigger on employee__c (after insert) 
{
   SumofemployeeSalaryclass.sumMethod(trigger.new);
}