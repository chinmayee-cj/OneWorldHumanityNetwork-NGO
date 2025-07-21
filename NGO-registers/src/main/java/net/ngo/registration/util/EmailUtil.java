package net.ngo.registration.util;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailUtil {
    public static void sendEmail(String to, String review) throws MessagingException {
        // Use your Gmail address as sender
        final String from = "ngooneworldhumanitynetwork@gmail.com";     // Your Google account
        // Use the EXACT 16-char app password generated in Google
        final String password = "abcd efgh ijkl mnop ";                  // Your App password (no quotes, but include spaces if shown as such)

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                // Google account + App password
                return new PasswordAuthentication(from, password);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        message.setSubject("Thank you for connecting with NGO");
        message.setText(
            "Dear Volunteer,\n\n"
            + "Thank you for connecting! Please consider contributions or reply to this mail if interested.\n"
            + "Your review: " + review + "\n\n"
            + "Best regards,\nNGO Team"
        );

        Transport.send(message);
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
