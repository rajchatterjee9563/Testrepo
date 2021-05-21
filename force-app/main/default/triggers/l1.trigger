trigger l1 on Lead (after insert)
 {
     list<contact> c=new list<contact>();
     for(lead l: trigger.new)
     {
        contact c1=new contact();
        c1.lastname=l.name;
        c.add(c1);
   }        
     insert c;
}