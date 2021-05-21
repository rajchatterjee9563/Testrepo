public class ThreeDMLoperationclass 
{
   public static void MydmlMethod()
   {
       List<employee__c> emplist = New list<employee__c>();
       emplist = [select name,id,salary__c from employee__c];
       //system.debug('emplist....'+emplist);
       Integer Accountmaxvalue = 85000 ; Integer Employeemaxvalue = 85000 ;
       Map<id,List<Employee__c>> listofemp = New Map<id,List<Employee__c>>();
       
       Id accid = id.valueof('0017F00002QA1uB');
       List<Account> acc = New list<Account>();
       acc = [select name, (select name,id ,salary__c from employees__r) from Account where id = :accid];
       //system.debug('acc.....'+acc);
       for(Account acc1 : acc)
       {
           for(employee__c em : acc1.employees__r)
           {
              // system.debug('em.....'+em);
           }
           List<employee__c> emlist = New list<employee__c>();
           emlist = [select name,id,salary__c from employee__c where id ='a0b7F000006AUlaQAG'] ;
           system.debug('emlist....'+emlist);
       }
   }
}