public class updatedcustomclass 
{
  public static void updatecustomMethod(string riya , string namechangewith)
  {
      List<Library__c> liblist = New list<Library__c>();
      liblist = [select name,id from Library__c where name = :riya];
      system.debug('liblist...'+liblist);
      set<Id> libidset = New set<id>();
      for(Library__c L : liblist)
      {
          libidset.add(L.id);
      }
  }
}