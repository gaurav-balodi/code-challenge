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
5. Integration of Stripe
6. Service and methods are ready for the Twilio Integration.

### TODO tasks:

1. Currently, working on customizing the Stripe to buy credits based on the provided amount.

### For simplicity page design I've used Bulma CSS.

##  To run on localhost:3000 install the stripe dependency
To install the Stripe CLI on Linux without a package manager:
Download the latest linux tar.gz file from https://github.com/stripe/stripe-cli/releases/latest
Unzip the file using the command
```tar -xvf stripe_X.X.X_linux_x86_64.tar.gz```
Move ./stripe to the project root

You have to first login using the command
```./stripe login```

Then use the following command to register the stripe events on local DB
```./stripe listen --forward-to localhost:3000/pay/webhooks/stripe```

After executing the above command you'll receive a signing secret along with the following message
```Getting ready... > Ready! You are using Stripe API Version [2020-08-27]. Your webhook signing secret is xxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx```

You have to copy the signing secret key and have you will have to update the rails credentials file using the command
```EDITOR="nano" rails credentials:edit```
