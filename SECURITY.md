# Security Guidelines for EmailService

## ⚠️ Important Security Notes

### 1. Environment Variables
- **NEVER** commit actual credentials to version control
- Always use environment variables for sensitive data
- Use `.env` files locally (not committed to repo)

### 2. Gmail App Password
- Use App Password instead of regular password
- Regenerate App Password if compromised
- Enable 2-Factor Authentication on Gmail account

### 3. Configuration Files
- `application.properties` - Default config with placeholders
- `application-dev.properties` - Development environment
- `application-prod.properties` - Production environment
- `env.example` - Template for environment variables

### 4. Running the Application

#### Development:
```bash
# Set environment variables
set GMAIL_USERNAME=your-email@gmail.com
set GMAIL_PASSWORD=your-app-password

# Run with dev profile
java -jar -Dspring.profiles.active=dev target/EmailService-0.0.1-SNAPSHOT.jar
```

#### Production:
```bash
# Set environment variables
set GMAIL_USERNAME=your-email@gmail.com
set GMAIL_PASSWORD=your-app-password

# Run with prod profile
java -jar -Dspring.profiles.active=prod target/EmailService-0.0.1-SNAPSHOT.jar
```

### 5. If Credentials Were Compromised
1. **Immediately** regenerate Gmail App Password
2. Remove sensitive data from Git history (see main README)
3. Update all environment variables
4. Review access logs if possible

### 6. Best Practices
- Use different Gmail accounts for dev/prod
- Monitor email sending logs
- Implement rate limiting for production
- Use HTTPS in production
- Regular security audits
