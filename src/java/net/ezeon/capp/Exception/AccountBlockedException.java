
package net.ezeon.capp.Exception;

/**
 *Use this class to report account blocked problem due to invalid loginId and password.
 * @author MR.SHINING
 */
public class AccountBlockedException extends Exception{
 
    
    public AccountBlockedException()
    {
        
    }
    public AccountBlockedException(String errMsg)
    {
     super(errMsg);   
    }
}
