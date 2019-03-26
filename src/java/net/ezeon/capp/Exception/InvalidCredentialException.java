
package net.ezeon.capp.Exception;

/**
 *Use this class to report authentication failed problem due to invalid loginId and password.
 * @author MR.SHINING
 */
public class InvalidCredentialException extends Exception{
   
    public InvalidCredentialException()
    {
        
    }
       public InvalidCredentialException(String errMsg)
        {
           super(errMsg); 
       }
 
}
