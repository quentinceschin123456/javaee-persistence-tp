/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EnglishLessons;

import java.util.Date;
import javax.ejb.Stateful;

/**
 *
 * @author AdminEtu
 */
@Stateful
public class reminder implements reminderLocal {

     private String reminderText;
     private Date dateUpdate;
    public reminder(){
        this.reminderText = "Veuillez saisir une note";
        this.dateUpdate = new  Date();
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public void editText(String text) {
        this.reminderText = text;
        this.dateUpdate = new  Date();
    }

    @Override
    public String getReminderText() {
        return this.reminderText;
    }

    @Override
    public Date getLastDate() {
        return this.dateUpdate;
    }
    
}
