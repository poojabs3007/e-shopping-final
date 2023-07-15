package org.jsp.helper;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import org.jsp.dto.Customer;
import org.springframework.stereotype.Service;

@Service
public class Otp_service {

	// In-memory storage for OTPs
	private Map<String, OtpDto> otpStorage = new HashMap<>();

	public int generateOTP() {
		// generate a 6-digit integer
		int otp = (int) ((Math.random() * 900000) + 100000);
		return otp;
	}

	public OtpDto createAndSaveOTP(String key) {
		int otp = generateOTP();
		LocalDateTime expiryTime = LocalDateTime.now().plusMinutes(5);
		OtpDto OTP = new OtpDto(otp, expiryTime);

		// Save the OTP associated with the provided key (e.g., email or phone number)
		otpStorage.put(key, OTP);

		return OTP;
	}

	public void saveOtp(String key, OtpDto OTP) {
		// Save the provided OTP associated with the provided key (e.g., email or phone
		// number)
		otpStorage.put(key, OTP);
	}

	public OtpDto getOtp(String key) {
		return otpStorage.get(key);
	}

	public boolean validateOTP(String key, int otp) {
		OtpDto OTP = otpStorage.get(key);

		if (OTP == null || OTP.isExpired()) {
			return false;
		}

		return OTP.getOtp() == otp;
	}

	public OtpDto createAndSaveOTPFoMobile(String mobileNumber) {
		int otp = generateOTP();
		LocalDateTime expiryTime = LocalDateTime.now().plusMinutes(5);
		OtpDto OTP = new OtpDto(otp, expiryTime);
		otpStorage.put(mobileNumber, OTP);

		return OTP;
	}

	public OtpDto createAndSaveOTP(Customer customer) {
		int otp = generateOTP();
		LocalDateTime expiryTime = LocalDateTime.now().plusMinutes(5);
		OtpDto OTP = new OtpDto(otp, expiryTime);
		otpStorage.put(customer.getEmail(), OTP);

		return OTP;
	}

}
