# frozen_string_literal: true

require_relative "lib/sports_odds_api/version"

Gem::Specification.new do |s|
  s.name = "sports-odds-api"
  s.version = SportsOddsAPI::VERSION
  s.summary = "Ruby library to access the Sports Game Odds API"
  s.authors = ["Sports Game Odds"]
  s.email = "api@sportsgameodds.com"
  s.homepage = "https://gemdocs.org/gems/sports-odds-api"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/SportsGameOdds/sports-odds-api-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
