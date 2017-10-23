# Sanitize with Deprecated

This is an extension to [Sanitize](https://github.com/rgrove/sanitize). Even in
its most permissive built-in configuration, Sanitize will still strip deprecated
HTML elements like `<center>` and `<font>`.

However, such elements remain commonly used, in contexts like email templates.

This gem introduces an additional config,
`Sanitize::Config::RELAXED_WITH_DEPRECATED`, which will not strip a custom list
of still-commonly-used deprecated elements.

## Installation

Add this line to your application's Gemfile:

    gem 'sanitize_with_deprecated'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sanitize_with_deprecated

## Usage

Use the exposed `Sanitize::Config::RELAXED_WITH_DEPRECATED` configuration
constant as described in
[sanitize’s documentation](https://github.com/rgrove/sanitize#quick-start).
