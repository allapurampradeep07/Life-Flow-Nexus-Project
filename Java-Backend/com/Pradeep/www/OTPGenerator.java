package com.Pradeep.www;

import java.util.Random;

public class OTPGenerator {

    public static int generateOTP() {
        Random random = new Random();
        return 100000 + random.nextInt(900000); // Generate a 6-digit OTP
    }
}
