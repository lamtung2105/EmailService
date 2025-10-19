@echo off
echo Starting EmailService in Development Mode...
echo Make sure you have set GMAIL_USERNAME and GMAIL_PASSWORD environment variables
echo.

REM Set environment variables (replace with your actual values)
set GMAIL_USERNAME=kojkon01@gmail.com
set GMAIL_PASSWORD=cxto ztus rsic wkwk

REM Run the application with dev profile
java -jar -Dspring.profiles.active=dev target/EmailService-0.0.1-SNAPSHOT.jar

pause
