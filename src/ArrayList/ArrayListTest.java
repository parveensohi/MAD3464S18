/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ArrayList;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author macstudent
 */
public class ArrayListTest {
    public static void main(String args[])
    {
        ArrayList<String> productname =new ArrayList<>();
        
        productname.add("Projector");
        productname.add("Excel");
        productname.add("Contigo");
        productname.add("Apple");
        
        productname.add(2,"oracle");
        System.out.println("====");
        
        for(String raman : productname)
        {
            System.out.println(raman);
        }
        
        Collections.sort(productname);
        System.out.println("====");
        
        productname.remove("oracle");
        
        if (productname.contains("oracle"))
        {
            productname.remove("oracle");
        }
        else
        {
            System.err.println("buy oracle first");
        }
        
        
        for(String raman : productname)
        {
            System.out.println(raman);
        }
        Collections.sort(productname);
        
        System.out.println("====");
        
        for(String raman : productname)
        {
            System.out.println(raman);
        }
        
        System.out.println("====");
        
        ArrayList<Books>library =new ArrayList<Books>();
        Books book1 =new Books(101,"the sky is falling",9);
        Books book2 =new Books(101,"pride and prejudice",5);
        Books book3 =new Books(101,"the monk",3);
        Books book4 =new Books(101,"courage",5);
        
        library.add(book1);
        library.add(book2);
        library.add(book3);
        library.add(book4);
        
        for(Books bk :library)
        {
            bk.displayInfo();
        }
        
        System.out.println("no of books in library" +library.size());
        
        if(library.contains(book2))
        {
            library.remove(book2);
        }
        
        System.out.println("no of books in library :" +library.size());
        
            library.add(2,new Books(120,"pearls",11));
            library.forEach((bk) -> {
                bk.displayInfo();
        });
        
            System.out.println("======");
            Collections.sort(library, new bookTitleComparator());
            for(Books bk:library)
            {
                bk.displayInfo();
            }
            
            System.out.println("======");
            Collections.sort(library, new bookRatingComparator());
            for(Books bk:library)
            {
                bk.displayInfo();
            }
        }
    }


        
        
     
    

