# DOQmentor ReadMe (prototype)

The DOQmentor is a web app that helps self-employed freelancers manage PDFs for design, music, and legal contracts. Users collect client data and projects based on current activity, completed gigs, and a customized visual project timeline. This app was built using Ruby on Rails on the back end, HTML, CSS, JavaScript and SVG components on the front end, leverages AnyGanttJS APIs, and integrates the Prawn PDF generator gem. I chose to build this app in order to better manage my workflow, contracts, and gigs.

## Local

* ```git clone``` [https://github.com/risatino/doqmentor-app.git]

* ```bundle install```

* ```rake db:create```

* ```rake db:migrate```

* To start server: ```rails server```

* To run tests: ```rspec spec```

* Rails version 5.0

* Versa 1.06.01 Wrap-Bootstrap Theme Integration

### Environment Variables

* ```touch .env```

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'prawn'
gem 'responders'
```
### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/risatino/doqmentor-app.
