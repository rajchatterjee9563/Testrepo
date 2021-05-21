public class employeeClass 
{
  public static void employeeMethod(List<employee__c> emp)
  {
      Id accountid ;
      Decimal currentsalary , Maxsalary =0 ;
      string empname ;
      List<employee__c> emplist = New list<employee__c>();
      for(employee__c em : emplist)
      {
          system.debug('emplist....'+emplist);
          accountid = em.Account__c ;
          currentsalary = em.Salary__c ;
          system.debug('accountid......'+accountid);
          system.debug('currentsalary......'+currentsalary);
      }
  }
}