public class KVPclass 
{
    public static void Mymethod(string Lastnameofcontact)
    {
        List<contact> conlist = New list<contact>();
        contact con = New contact();
        con.Lastname = Lastnameofcontact ;
        conlist.add(con);
        insert conlist ;
        
        List<contact> colist = New list<contact>();
        colist = [select name,id from contact where name = :Lastnameofcontact];
        id contactid ;
        for(contact c : colist )
        {
            contactid = c.id ;
        }
          contact c1 = New contact();
          c1.LastName = Lastnameofcontact ;
          c1.Email = 'rajchatterjee900@gmail.com';
          c1.id = contactid ;
          update colist ;
    }
}