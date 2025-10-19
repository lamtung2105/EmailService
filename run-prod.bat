@echo off
echo Starting EmailService in Production Mode...
echo Make sure you have set GMAIL_USERNAME and GMAIL_PASSWORD environment variables
echo.

REM Check if environment variables are set
if "%GMAIL_USERNAME%"=="" (
    echo ERROR: GMAIL_USERNAME environment variable is not set
    echo Please set it using: set GMAIL_USERNAME=your-email@gmail.com
    pause
    exit /b 1
)

if "%GMAIL_PASSWORD%"=="" (
    echo ERROR: GMAIL_PASSWORD environment variable is not set
    echo Please set it using: set GMAIL_PASSWORD=your-app-password
    pause
    exit /b 1
)

REM Run the application with prod profile
java -jar -Dspring.profiles.active=prod target/EmailService-0.0.1-SNAPSHOT.jar

pause
