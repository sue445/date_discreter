source 'https://rubygems.org'

# Specify your gem's dependencies in date_discreter.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.2.2")
  # NOTE: activesupport 5.0.0+ requires Ruby 2.2.2+
  gem "activesupport", "< 5.0.0"
elsif Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.7.0")
  # NOTE: activesupport 7.0.0+ requires Ruby 2.7.0+
  gem "activesupport", "< 7.0.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.2.0")
  # NOTE: rake v13.0.0+ requires Ruby 2.2.0+
  gem "rake", "< 13.0.0"

  # NOTE: concurrent-ruby v1.1.0+ requires Ruby 2.2.0+
  gem "concurrent-ruby", "< 1.1.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.2.0")
  # NOTE: minitest v5.12.1+ requires Ruby 2.2.0+
  gem "minitest", "< 5.12.1"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.4.0")
  # NOTE: simplecov-html v0.11.0+ requires Ruby ~> 2.4
  gem "simplecov-html", "< 0.11.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.5.0")
  # NOTE: docile v1.4.0+ requires Ruby 2.5.0+
  gem "docile", "< 1.4.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.3.0")
  # NOTE: json v2.6.0+ requires Ruby 2.3.0+
  gem "json", "< 2.6.0"

  # NOTE: webrick v1.4.0+ requires Ruby 2.3.0+
  gem "webrick", "< 1.4.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.7.0")
  # term-ansicolor 1.9.0+ doesn't work on Ruby < 2.7
  gem "term-ansicolor", "< 1.9.0"
end
