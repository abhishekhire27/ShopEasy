package com.cdac.shopeasyapp.service;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ServiceMail {

	Properties emailProperties;
	Session mailSession;
	MimeMessage emailMessage;
	public void setMailServerProperties() {

		String emailPort = "587";//gmail's smtp port

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");
	}

	public void createEmailMessage(String toEmail,String subject,String body) throws AddressException,
			MessagingException {
		String toEmails = toEmail; // "sonawanepratik14@gmail.com"
		String emailSubject = subject; // "smart city clean city"
		String emailBody = body; //"This is an email sent by Smart City Clean City App You are Successfully Register";
		mailSession = Session.getDefaultInstance(emailProperties, null);
				
		emailMessage = new MimeMessage(mailSession);
		emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails));
		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		emailMessage.setText(emailBody);// for a text email
	}

	public void sendEmail() throws AddressException, MessagingException {
		String emailHost = "smtp.gmail.com";
		String fromUser = "webbloodbank007@gmail.com";//just the id alone without @gmail.com
		String fromUserEmailPassword = "webblood@123";
		Transport transport = mailSession.getTransport("smtp");
		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}
}
