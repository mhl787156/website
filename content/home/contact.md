---
# An instance of the Contact widget.
widget: contact

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 130

title: Contact
subtitle:

content:
  # Automatically link email and phone or display as text?
  autolink: true

  # Email form provider
  form:
    provider: netlify
    formspree:
      id:
    netlify:
      # Enable CAPTCHA challenge to reduce spam?
      captcha: true

  # Contact details (edit or remove options as required)
  email: mickey "dot" li "at" ucl dot ac dot uk
  address:
    street: UCL at Here East, 8-9 East Bay Lane, Queen Elizabeth Olympic Park
    city: London
    region: London
    postcode: 'E15 2GW'
    country: United Kingdom
    country_code: UK
  directions: UCL HereEast at HereEast Complex Stratford

design:
  columns: '2'
---
