package com.fileFuntions;


import java.security.SecureRandom;




import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;

public class EncryptionDecryptionAES {
	static Cipher cipher;


	
	   public  static SecretKey generateSymmetricKey() throws Exception {
    	   SecretKey skey=null;
    	try {
    		
    		
    		
    	   	byte[] knumb = "deduplication".getBytes();
         
	    	   
	        KeyGenerator kgen = KeyGenerator.getInstance("AES");
	        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
	        sr.setSeed(knumb);
	        kgen.init(128, sr); // 128, 256 and 448 bits may not be available
	        skey= kgen.generateKey();
	         
            return skey;
			
		} catch (Exception e) {
			// TODO: handle exception
			return skey;
			
		}
	   }
    	   
    	   
     

	public static String encrypt(String plainText)
			throws Exception {
		KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
		keyGenerator.init(128);
		SecretKey secretKey = EncryptionDecryptionAES.generateSymmetricKey();
		cipher = Cipher.getInstance("AES");
		byte[] plainTextByte = plainText.getBytes();
		cipher.init(Cipher.ENCRYPT_MODE, secretKey);
		byte[] encryptedByte = cipher.doFinal(plainTextByte);
		
		
		
		//Base64.Encoder encoder = Base64.getEncoder();
		String encryptedText = DatatypeConverter.printBase64Binary(encryptedByte);
		System.out.println("encryptedText---------"+encryptedText);
		return encryptedText;
	}

	public static String decrypt(String encryptedText)
			throws Exception {
		
		KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
		keyGenerator.init(128);
		SecretKey secretKey = EncryptionDecryptionAES.generateSymmetricKey();
		cipher = Cipher.getInstance("AES");
		//Base64.Decoder decoder = Base64.getDecoder();
		byte[] encryptedTextByte = DatatypeConverter.parseBase64Binary(encryptedText);
		System.out.println("encryptedTextByte"+encryptedTextByte);
		cipher.init(Cipher.DECRYPT_MODE, secretKey);
		byte[] decryptedByte = cipher.doFinal(encryptedTextByte);
		String decryptedText = new String(decryptedByte);
		System.out.println("encryptedText---------"+decryptedText);
		return decryptedText;
	}
	public static void main(String[] args) {
		
		EncryptionDecryptionAES en = new EncryptionDecryptionAES();
		try {
			String s = en.decrypt("Shz12CusIursqGUdmqgIQFP2aBICHA3VIbR6JU66PVdC9Vs799rxinYrwZxpnevl8+ijSpqj2yVogOLsb8FVskb0YvwT9JyrHxaxm2rjLnPqNrJcNLcsTYdrXhd9CRbgxmyJAoBkXax9rT74FuftOvfUxq/FNd+tN7nCZnZ4kQZOoI/g6FlTuD19x0Xp4s/8qK7N1t+HOiMqhSCwf1HrJgKluCrZvVbiO3nifgAtR8kRaitLBVtF0kKvUVzfkNlK5jJGiUqiD/fDCuPfdlI/iWYCszDqoo2fh9mzBJ+lwBJ78RtCBPSqDg7y72RP1Aa+c6pl5lyxV3RIvDnyyjhMuQDg2KHDKjL53itgZTXVOPkn0OPG/gq5T1tdln70HW4YZB3IKhAwOALL2Snen2b4zjWCyJuixb29IIdhIUies1Ty474O5LVdSlB0ypGUcZrM7/Z0AlJ3kXwxT5RGvRVYGQUIt5jfvDEOpsTeEeiEq7+yq9VYmdIJV9qtXmJMd8Sw92CbcNHJ+7RjdiymPER9w49U4ZNJ+qdOFzZM/NR6cs0CZFjfAXFKXb1dWeRCA651");
			System.out.println(s);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}