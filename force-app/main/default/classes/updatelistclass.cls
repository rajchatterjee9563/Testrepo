public class updatelistclass 
{
    public static void updateMethod(string riya,string namechangewwith)
    {
        List<Library__c> lst = New List<Library__c>();
        lst = [Select id from Library__c where name =: Riya];
        set<Id> libidset = New Set<Id>();
        for(Library__C L : lst)
        {
            Libidset.add(L.Id);
        }
          List<student__c> studentinsertwithmap = New List<student__c>();
        List<student__c> stulist = New List<Student__c>();
         map<id, student__c> studentidwithstudentmap = New map <id, student__c>([Select id,name from student__c where L_lookup__c In:Libidset]);
        system.debug('studentidwithstudentmap...'+studentidwithstudentmap);
          for(student__c stu : studentidwithstudentmap.values())
          {
              stu.name = namechangewwith ;
              stulist.add(stu);
          }
            update stulist ;
            system.debug('stulist....'+stulist);           
        }
        
    }