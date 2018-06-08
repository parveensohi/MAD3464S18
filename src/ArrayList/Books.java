/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ArrayList;

import java.util.Comparator;

/**
 *
 * @author macstudent
 */
public class Books {
    int bookID;
    String bookTitle;
    int bookRating;
    
    Books()
    {
        this.bookID=0;
        this.bookTitle="Unknown";
        this.bookRating=0;
    }
    
    Books(int bookID,String bookTitle,int bookRating)
    {
        this.bookID=bookID;
        this.bookRating=bookRating;
        this.bookTitle=bookTitle;
    }
    void setID(int ID)
    {
        System.out.println("Enter the ID of the book :");
        this.bookID=ID;
    }
    int getID()
    {
        return bookID;
    }
    
    void setTitle(String Title)
    {
        System.out.println("Enter the name of the book :");
        this.bookTitle = Title;
    }
    String getTitle()
    {
        return bookTitle;
    }
    
    void setRating(int Rating)
    {
        System.out.println("Enter the Rating of the book :");
        this.bookRating =Rating;
    }
    int getRating()
    {
        return bookRating;
    }
    void displayInfo()
    {
        System.out.println("BookID :"+this.bookID 
        +"\n BookTitle :"+ this.bookTitle+
                "\n BookRating :"+ this.bookRating);
    }

    void display() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}


class bookTitleComparator implements Comparator <Books>
{
    @Override
    public int compare(Books o1,Books o2)
    {
        return o1.bookTitle.compareToIgnoreCase(o2.bookTitle);
    }
}


class bookRatingComparator implements Comparator <Books>
{
    @Override
    public int compare(Books o1,Books o2)
    {
        if(o1.bookRating==o2.bookRating)
            return 0;
        else if(o1.bookRating<o2.bookRating)
            return 1;
        else
            return -1;
    }
}

