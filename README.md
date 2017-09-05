Jungle
=====================

A mini e-commerce application built with Rails 4.2 for practicing Ruby on Rails.

## Screenshots

### Landing Page
!["Screenshot of landing_page"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/0_landing_page.png)

### Empty Cart
!["Screenshot of Empty Cart"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/1_empty_cart.png)

### Cart with items
!["Screenshot of cart with items"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/2_cart.png)

### Checkout with Stripe
!["Screenshot of checkout with stripe"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/3_checkout_stripe.png)

### Order summary
!["Screenshot of order Summary"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/4_order_summary.png)

### Review for an item
!["Screenshot of review for an item"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/5_review.png)

### Review submit
!["Screenshot of review submit"](https://github.com/heeeunkimmm/jungle-rails/blob/master/docs/6_review_submit.png)




## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
