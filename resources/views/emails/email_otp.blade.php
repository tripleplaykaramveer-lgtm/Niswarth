<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Email OTP Verification</title>
</head>
<body style="margin:0; padding:0; background-color:#f4f6f8; font-family: Arial, Helvetica, sans-serif;">

    <table width="100%" cellpadding="0" cellspacing="0" style="padding:20px;">
        <tr>
            <td align="center">

                <table width="100%" max-width="500" cellpadding="0" cellspacing="0"
                       style="background:#ffffff; border-radius:8px; padding:30px; box-shadow:0 4px 10px rgba(0,0,0,0.08);">

                    <!-- Header -->
                    <tr>
                        <td align="center" style="padding-bottom:20px;">
                            <h2 style="margin:0; color:#333;">Email Verification</h2>
                            <p style="margin:5px 0 0; color:#777; font-size:14px;">
                                Secure OTP Verification
                            </p>
                        </td>
                    </tr>

                    <!-- Body -->
                    <tr>
                        <td style="color:#444; font-size:15px; line-height:1.6;">
                            <p>Hello,</p>

                            <p>
                                Use the OTP below to verify your email address.
                                This OTP is valid for <strong>10 minutes</strong>.
                            </p>
                        </td>
                    </tr>

                    <!-- OTP Box -->
                    <tr>
                        <td align="center" style="padding:25px 0;">
                            <div style="
                                display:inline-block;
                                background:#f0f4ff;
                                color:#1a3cff;
                                font-size:32px;
                                font-weight:bold;
                                letter-spacing:6px;
                                padding:15px 30px;
                                border-radius:6px;
                                border:1px dashed #1a3cff;
                            ">
                                {{ $otp }}
                            </div>
                        </td>
                    </tr>

                    <!-- Footer Text -->
                    <tr>
                        <td style="color:#666; font-size:14px; line-height:1.6;">
                            <p>
                                If you didn’t request this verification, please ignore this email.
                            </p>

                            <p style="margin-top:30px;">
                                Regards,<br>
                                <strong>{{ config('app.name') }}</strong>
                            </p>
                        </td>
                    </tr>

                </table>

                <!-- Footer -->
                <p style="font-size:12px; color:#999; margin-top:15px;">
                    © {{ date('Y') }} {{ config('app.name') }}. All rights reserved.
                </p>

            </td>
        </tr>
    </table>

</body>
</html>
