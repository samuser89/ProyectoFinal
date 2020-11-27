/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

/**
 *
 * @author samuel.serna
 */
public class clsLogin {
    public boolean VlidarLogin(Models.clsLogin obclsLogin){
        try{
            
            return obclsLogin.getStEmail().equals("sserna@gmail.com") &&
                    obclsLogin.getStPassword().equals("123456");
        
        }catch(Exception ex){
            throw ex;
        }
        
        
            }
}
