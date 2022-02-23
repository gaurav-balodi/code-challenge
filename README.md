# README

Please use the following command inside the project root folder to install the required dependencies:

```bundle install```

After installing the dependencies, please use the following commands to create database and seed users data
```db:create db:migrate db:seed```

### Two users will get created after the successful execution of the above commands
>User 1: (Simple User)
email: "test@example.com"
password: "password"

>User 2: (Admin User)
email: "admin@example.com"
password: "password"

### DONE tasks:

1. User and Admin Sign in feature
2. Admin and User Dashboards
3. Decrement of SMS
4. Payment History page for Admin User

### TODO tasks:

1. Implementation of purchasing of SMS and sending of SMS. I've created the method I'll be using the send the SMS
2. Implementation of Stripe

### For simplicity page design I've used Bulma CSS.