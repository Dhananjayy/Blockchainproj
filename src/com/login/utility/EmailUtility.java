package com.login.utility;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.smtp.SMTPTransport;

public class EmailUtility {
	
	public static String sendEmail(String emailId)
	{
		 
		      String userpassword =  getRandomPassword(8);
		      final String SMTP_SERVER = "smtp.gmail.com";
		      final String PASSWORD = "";// password
		      final String USERNAME = "tejaschachad@gmail.com";
		      final String EMAIL_FROM = "tejaschachad@gmail.com";
//		      final String EMAIL_TO = "sjcindia@yahoo.com";
//		      final String EMAIL_TO_CC = "tejaschachad@gmail.com";

		      final String EMAIL_SUBJECT = "Login details";
		      final String EMAIL_TEXT = "username -"+emailId+"\npassword - "+userpassword;

		

		        Properties prop = System.getProperties();
		        prop.put("mail.smtp.starttls.enable", "true");
		        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
		        prop.put("mail.smtp.auth", "true");
		        prop.put("mail.smtp.port", "25"); // default port 25

		        Session session = Session.getInstance(prop, null);
		        Message msg = new MimeMessage(session);

		        try {
				
					// from
		            msg.setFrom(new InternetAddress(EMAIL_FROM));

					// to 
		            msg.setRecipients(Message.RecipientType.TO,
		                    InternetAddress.parse(emailId, false));

					// cc
//		            msg.setRecipients(Message.RecipientType.CC,
//		                    InternetAddress.parse(emailId, false));

					// subject
		            msg.setSubject(EMAIL_SUBJECT);
					
					// content 
		            msg.setText(EMAIL_TEXT);
					
		            msg.setSentDate(new Date());

					// Get SMTPTransport
		            SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
					
					// connect
		            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
					
					// send
		            t.sendMessage(msg, msg.getAllRecipients());

		            //System.out.println("Response: " + t.getLastServerResponse());

		            t.close();
		            return userpassword;

		        } catch (MessagingException e) {
		            e.printStackTrace();
		        }
				return null;

		
	}
	
	
	public static String sendOtp(String emailId)
	{
		 
		      String otp =  getOTP(8);
		      final String SMTP_SERVER = "smtp.gmail.com";
		      final String PASSWORD = "tecmacal@8976";
		      final String USERNAME = "tejaschachad@gmail.com";
		      final String EMAIL_FROM = "tejaschachad@gmail.com";
//		      final String EMAIL_TO = "sjcindia@yahoo.com";
//		      final String EMAIL_TO_CC = "tejaschachad@gmail.com";

		      final String EMAIL_SUBJECT = "OTP";
		      final String EMAIL_TEXT = "OTP:-"+otp;

		

		        Properties prop = System.getProperties();
		        prop.put("mail.smtp.starttls.enable", "true");
		        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
		        prop.put("mail.smtp.auth", "true");
		        prop.put("mail.smtp.port", "25"); // default port 25

		        Session session = Session.getInstance(prop, null);
		        Message msg = new MimeMessage(session);

		        try {
				
		            msg.setFrom(new InternetAddress(EMAIL_FROM));
		            msg.setRecipients(Message.RecipientType.TO,
		                    InternetAddress.parse(emailId, false));
		            msg.setSubject(EMAIL_SUBJECT);
		            msg.setText(EMAIL_TEXT);
		            msg.setSentDate(new Date());
		            SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
		            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
		            t.sendMessage(msg, msg.getAllRecipients());
		            t.close();
		            return otp;

		        } catch (MessagingException e) {
		            e.printStackTrace();
		        }
				return null;

		
	}
	
	
	
	
	public static void main(String[] args) {
		sendEmail("tejaschachad@gmail.com");
	}
	
	
	static String getOTP(int len) 
    { 
      
        String numbers = "0123456789"; 
       
        String values = numbers; 
  
        
        Random rndm_method = new Random(); 
  
        char[] password = new char[len]; 
  
        for (int i = 0; i < len; i++) 
        { 
            
            password[i] = 
              values.charAt(rndm_method.nextInt(values.length())); 
  
        } 
        return   String.valueOf(password);
    } 
	
	
	static String getRandomPassword(int len) 
    { 
      
  
        
        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
        String Small_chars = "abcdefghijklmnopqrstuvwxyz"; 
        String numbers = "0123456789"; 
       
  
  
        String values = Capital_chars + Small_chars + 
                        numbers; 
  
        
        Random rndm_method = new Random(); 
  
        char[] password = new char[len]; 
  
        for (int i = 0; i < len; i++) 
        { 
            
            password[i] = 
              values.charAt(rndm_method.nextInt(values.length())); 
  
        } 
        return   String.valueOf(password);
    } 
}


	
	
	


