# Changelog

## 1.3.1 (2026-07-19)

Full Changelog: [v1.3.0...v1.3.1](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.3.0...v1.3.1)

## [1.3.0](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.2.3...v1.3.0) (2026-07-18)


### Features

* add support for the /markets endpoint ([ce01d75](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/ce01d759933fc8c79d15ae84720da6d0b94eccf3))
* initial stlc build ([51bb9f0](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/51bb9f0ae4bb9e49d056c0cedebaddb6db207f98))


### Bug Fixes

* declare base64 dependency for Ruby 3.4+ compatibility ([b238e6a](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/b238e6a09ddbbbb7f06e5317a296ad2b8bca5779))

## 1.2.3 (2026-07-08)

Full Changelog: [v1.2.2...v1.2.3](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.2.2...v1.2.3)

### Bug Fixes

* calling `break` out of streams should be instantaneous ([537aad0](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/537aad0b2ceb50068372914cba30d0379fc7ec3d))
* **client:** always add content-length to post body, even when empty ([99718bd](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/99718bd9cebc1fee4c5efb390607345cdb27f281))
* **client:** loosen json header parsing ([0307d97](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/0307d97a3844180cc3227902b52baeb37d319a86))
* **docs:** fix mcp installation instructions for remote servers ([e60c40c](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/e60c40ccdca70f2e59548db754db3cb8e72e8cf9))
* issue where json.parse errors when receiving HTTP 204 with nobody ([bb722ce](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/bb722cee2d0fbadc59bb38ab7fb8c3276ac60654))


### Chores

* **docs:** remove www prefix ([a4bf528](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/a4bf528f53d3fc10396f2f39e4ab122ccc393178))
* **internal:** codegen related update ([2aebae3](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/2aebae36d92c62daa0156477d60a1a0624f9ab77))
* **internal:** update `actions/checkout` version ([ab57614](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/ab57614a39b81bf558804846d9bad83e50cb8834))
* move `cgi` into dependencies for ruby 4 ([0ea92c6](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/0ea92c68f0c0eb91e49103b03ce11531f5f1e99d))


### Documentation

* prominently feature MCP server setup in root SDK readmes ([ff8bb53](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/ff8bb53a4a14cf7c78b33070e17d483cd60e5cfa))

## 1.2.2 (2025-11-26)

Full Changelog: [v1.2.1...v1.2.2](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.2.1...v1.2.2)

### Chores

* explicitly require "base64" gem ([45d5be1](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/45d5be1f47fad8277c9480f60bb410f9f114ef0a))

## 1.2.1 (2025-11-05)

Full Changelog: [v1.2.0...v1.2.1](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.2.0...v1.2.1)

### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([a1a17e9](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/a1a17e9b55716af2f249678eefe9e5c87bcd86a6))


### Chores

* bump dependency version and update sorbet types ([04396d9](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/04396d9a1b72850230d84581fc3339e6cecdcd22))

## 1.2.0 (2025-10-25)

Full Changelog: [v1.1.0...v1.2.0](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.1.0...v1.2.0)

### Features

* handle thread interrupts in the core HTTP client ([c604c4c](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/c604c4ceccf001d7ea7b4c2d6147a3da778dbf7d))


### Bug Fixes

* absolutely qualified uris should always override the default ([93d7577](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/93d75779f4d6b7a83501a7effb19394103206bec))
* should not reuse buffers for `IO.copy_stream` interop ([fa798db](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/fa798db8d0892a30cd4cff502dd64b89d64b6558))


### Chores

* ignore linter error for tests having large collections ([de89b4c](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/de89b4cc4a3ab2942f4e89690f0b6ab206fdf039))

## 1.1.0 (2025-10-08)

Full Changelog: [v1.0.1...v1.1.0](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.0.1...v1.1.0)

### Features

* test ([27c3d5b](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/27c3d5bcd939182a6e1bf55be066c160f7fbb327))

## 1.0.1 (2025-10-01)

Full Changelog: [v1.0.0...v1.0.1](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v1.0.0...v1.0.1)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([28e1cb8](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/28e1cb8e5af175c4c0afa49da5596c939dcd9758))
* coroutine leaks from connection pool ([6c9b16e](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/6c9b16e9c830d664af77e6a25bf3110b32e60091))
* shorten multipart boundary sep to less than RFC specificed max length ([cda53c9](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/cda53c9aa624162299230dccbd47838f3e6e4e30))


### Chores

* allow fast-format to use bsd sed as well ([de4c0f0](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/de4c0f0a2e46a2f8c1e04540a31ac7a17202d467))
* **internal:** codegen related update ([8101617](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/81016173ee5cadb07e1ea09785adbc79fa8ccf5b))
* **internal:** codegen related update ([b1186c6](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/b1186c6bee86fe8b82456612407a78f33c6a655e))

## 1.0.0 (2025-09-23)

Full Changelog: [v0.0.1...v1.0.0](https://github.com/SportsGameOdds/sports-odds-api-ruby/compare/v0.0.1...v1.0.0)

### Chores

* configure new SDK language ([9c4b469](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/9c4b4699bebfe2c5b954d381bd7e9e80d0fac2ad))
* update SDK settings ([cbf7543](https://github.com/SportsGameOdds/sports-odds-api-ruby/commit/cbf7543231a240400a972d7f4ef862387ffae409))
