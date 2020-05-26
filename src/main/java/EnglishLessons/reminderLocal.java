/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EnglishLessons;

import java.util.Date;
import javax.ejb.Local;

/**
 *
 * @author AdminEtu
 */
@Local
public interface reminderLocal {

    void editText(String text);

    String getReminderText();
    
    Date getLastDate();
}
