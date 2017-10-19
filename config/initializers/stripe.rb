Rails.configuration.stripe = {
  :publishable_key => ENV.fetch('STRIPE_PUB_KEY'),
  :secret_key      => ENV.fetch('STRIPE_PRIV_KEY')
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]