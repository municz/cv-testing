Cviceni testovani
========

Gemy
----
* [RSpec](https://github.com/rspec/rspec)
* [FactoryGirl](https://github.com/thoughtbot/factory_girl) -tovarnicky objektu
* [Faker](https://github.com/stympy/faker) - nahodne generovani udaju
* [Capybara](https://github.com/jnicklas/capybara)
* [Poltergeist](https://github.com/teampoltergeist/poltergeist) - Driver pro Capybaru
* [Launchy](https://github.com/copiousfreetime/launchy) - otevirani ulozenych stranek

Instalace
---------
```ruby
bundle install
# popripade
bundle install --path=./.bundle
```
Pro Poltergeist v Capybare treba nainstalovat [PhantomJS](http://phantomjs.org/)

Pokud haze chybu instalace Nokogiri, pak aktualizovat Libxml2, GCC, zkusit v Gemfile snizit verzi na 1.6.1 nebo 1.6.2, popripade Googlit a doufat :)

Spusteni
--------
`bundle exec rspec --color`

Napoveda
--------
* [RSpec Cheat Sheet](https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf)
* [Capybara Cheat Sheet](https://gist.github.com/zhengjia/428105)
