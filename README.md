# esnext-rails

[esnext][esnext] adapter for the Rails asset pipeline.

## Installation

Add the esnext-rails to your Gemfile:

```ruby
gem 'esnext-rails'
```

## Usage

To have a JavaScript file compiled using esnext, append the `.esn` extension. For example:

```js
// application.js.esn

class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }
}

console.log(new Point(1, 2));
```

Requesting `/assets/application.js` will return the compiled version of this file.

## Running tests

```
$ bundle install
$ bundle exec rake test
```

If you need to test against local gems, use Bundler's gem :path option in the Gemfile.

## Code Status

* [![Travis CI](https://api.travis-ci.org/esnext/esnext-rails.png)](http://travis-ci.org/esnext/esnext-rails)

[esnext]: https://github.com/esnext/esnext
