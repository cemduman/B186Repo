@isTest
public class SignOfNumberTest1 {
    
    @isTest static void testToBePositive(){
        
       String signOfNumber = SignOfNumber1.displaySign(13);
              
            System.assertEquals('Positive R', signOfNumber);
        //we check if expected (on the left) and actual value (on the right) are the same
        //if expected and actual are the same, test is succesful in this scenario
        
    }

    @isTest static void testToBeNeuter(){
        
        String signOfNumber = SignOfNumber1.displaySign(0);
        Assert.areEqual('Neuter R',signOfNumber);
    }
  
    @isTest static void testToBeNegative(){
    String signOfNumber = SignOfNumber1.displaySign(-77);
        Assert.areEqual('Negative R',signOfNumber);
    }
}