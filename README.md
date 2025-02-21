# BBQ Events App 🍖
#### Educational Project

#### Description
This project was developed using:
```
 ruby '2.5.3'

'rails', '~> 5.2.2'` 
```
for educational purposes.

#### Overview
The application is designed for planning joint events. After registration, a user can create an event, and other users can join it. Access to events can be restricted by setting a PIN code.

#### Technologies Used:
+ [reCaptcha](https://www.google.com/recaptcha/intro/)
+ Many-to-Many relationships (subscription functionality)
+ Email sending via `SendGrid`
+ Image processing on the server (`CarrierWave`, `rmagick`)

#### Installation and Setup
Before running the application, you need to install all required gems and prepare the database. Run the following commands in the application directory:
```
bundle install
bundle exec rake db:migrate
```

You also need to set up environment variables for:

+ `reCaptcha`
```
RECAPTCHA_BBQ_SECRET_KEY
RECAPTCHA_BBQ_SITE_KEY
```
+ `SendGrid`
```
SENDGRID_USERNAME
SENDGRID_PASSWORD
```

To start the local server, run:

```
bundle exec rails s
```


The full list of used gems can be found in the `Gemfile`.

#### Demo
The current version of the application is hosted [here](https://bbqevent.herokuapp.com).
