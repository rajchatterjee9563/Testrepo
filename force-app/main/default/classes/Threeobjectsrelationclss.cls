public class Threeobjectsrelationclss 
{
  public static Void relationShipMethod(List<contact> con)
  {
      id conid ;
      decimal currentsalary , maxsalary= 0 ;
      List<Account> listofacc = New list<Account>();
      for(Contact c : con)
      {
          conid = c.Accountid;
          currentsalary = c.Salary__c ;
          system.debug('conid.....'+conid);
          system.debug('currentsalary.....'+currentsalary);
      }
      List<Account> acclist = New list<Account>();
      acclist= [select name,id,max_salary__c, (select name,id,salary__c from contacts) from account where id = :conid];
      system.debug('acclist....'+acclist); 
      for(Account ac : acclist) 
      {
          for(contact c1 : ac.contacts)
          {
              if(maxsalary < c1.Salary__c)
              {
                  maxsalary = c1.Salary__c ;
              }
          }
          system.debug('maxsalary....'+maxsalary);
      }
      Account acc1 =New Account();
      acc1.max_salary__c = maxsalary ;
      acc1.Id = conid ;
      update acc1 ;
  }
}