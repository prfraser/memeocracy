# README

Welcome to Memeocracy.

Memeocracy is a website that sells motivational meme tshirts.

Built using Ruby on Rails in the Coder Academy two day hackathon!

Steps to get this app configure locally on your machine.
The site can be viewed at url:    

1) Clone repo
2) Run bundle install
3) rails db:migrate  

Then we need to set up the environment for Mailgun and Stripe.

To do this go to make .env file in the route directory and put it in .gitignore
like this:
.env in the bottom of the .gitignore file

 In the actual .env file input this data:

 MAILGUN_API_KEY=Your mailgun Api key
 MAILGUN_DOMAIN= Your mailgun domain
 EMAIL=Your email


 To set up stripe locally on the machine, put this in your .env file

 STRIPE_PUB_KEY= Your Stripe publishable key
 STRIPE_PRIV_KEY= Your stripe secret key


 Change out the values for your own personal stuff.

 To use as a buyer you will need to log in or sign up at the top right corner.
 You should now be able to cycle through the navigation, To buy the stuff...

 To go in as a user you will need to navigate to http://localhost:3000/sellers/sign_up

 Then navigate to products http://localhost:3000/products here opens up a seller dashboard to edit update view and delete products.
