@echo off
echo Starting EmailService in Production Mode...
echo.

REM Check if .env file exists
if not exist .env (
    echo ERROR: .env file not found!
    echo Please copy env.example to .env and fill in your credentials
    echo Command: copy env.example .env
    pause
    exit /b 1
)

REM Load environment variables from .env file
for /f "usebackq tokens=1,2 delims==" %%a in (".env") do (
    if not "%%a"=="" if not "%%a:~0,1%"=="#" (
        set "%%a=%%b"
    )
)

REM Verify required environment variables
if "%GMAIL_USERNAME%"=="" (
    echo ERROR: GMAIL_USERNAME not found in .env file
    pause
    exit /b 1
)

if "%GMAIL_PASSWORD%"=="" (
    echo ERROR: GMAIL_PASSWORD not found in .env file
    pause
    exit /b 1
)

echo Using Gmail account: %GMAIL_USERNAME%
echo.

REM Run the application with prod profile
java -jar -Dspring.profiles.active=prod target/EmailService-0.0.1-SNAPSHOT.jar

pause
