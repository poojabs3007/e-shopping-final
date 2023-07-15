package org.jsp.helper;

import java.io.IOException;
import java.io.StringWriter;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.jsp.dto.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import freemarker.template.TemplateException;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class SendMail {

	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	freemarker.template.Configuration configuration;

	public boolean send(String toEmail, OtpDto otpDto, Customer customer) {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			helper.setFrom("jj4708701@gmail.com");
			helper.setTo(toEmail);
			helper.setSubject("OTP for Email Verification");

			// Format expiry time to display in the email
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a");
			String formattedExpiryTime = otpDto.getExpiryTime().format(formatter);

			String content = "<p>Dear " + customer.getFname() + ",</p>"
					+ "<p>Thanks for registering. Your one-time password (OTP) for email verification is " + "<b>"
					+ otpDto.getOtp() + "</b>" + "</p>" + "<p>This OTP is valid until " + formattedExpiryTime + ".</p>"
					+ "<p>Please enter this OTP to complete your registration process.</p>"
					+ "<p>If you did not initiate this request, please ignore this email.</p>" + "<p>Thank you,</p>"
					+ "<p>Your Team</p>";
			helper.setText(content, true);

			javaMailSender.send(message);
			return true; // assuming the method returns true when the mail has been sent successfully
		} catch (MessagingException e) {
			e.printStackTrace();
			return false; // in case of an exception, return false
		}
	}

	public boolean sendWelcomeMail(Customer customer) {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			String content = "<p>Dear " + customer.getFname() + ",</p>" + "<p>Dear Customer WellCome to Shopper Choices"
					+ "<b>" + "</b>" + "</p>" + "<p>If you did not initiate this request, please ignore this email.</p>"
					+ "<p>Thank you,</p>" + "<p>Shoppers Choice Team</p>";
			helper.setText(content, true);
			javaMailSender.send(message);
			return true; // Successfully sent email
		} catch (MessagingException e) {
			// Log error message
			System.out.println("Failed to send email: " + e.getMessage());
			e.printStackTrace();
			return false; // Failed to send email
		}
	}

	private String getEmailContent(Customer exist) {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		StringWriter writer = new StringWriter();
		Map<String, Object> model = new HashMap<>();
		model.put("exist", exist);
		try {
			configuration.getTemplate("customer.ftl").process(model, writer);
		} catch (TemplateException | IOException e) {
			// Log error message
			System.out.println("Failed to process email template: " + e.getMessage());
			e.printStackTrace();
		}
		return writer.getBuffer().toString();
	}
}
