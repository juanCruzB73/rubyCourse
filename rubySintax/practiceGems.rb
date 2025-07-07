=begin
💎 What is a Gem?

A gem is a Ruby library or tool packaged for distribution. Gems help you avoid reinventing the wheel — you can just install and use code others have written.

For example:

    rails → Web framework

    nokogiri → HTML/XML parsing

    bcrypt → Password hashing

    colorize → Add color to terminal output
=end
require 'colorize'

puts "Hello".colorize(:red)

=begin
What is Bundler?

Bundler manages your gem dependencies for a project. It:

    Tracks which gems and versions your app uses

    Creates a Gemfile to list them

    Automatically installs everything needed
=end
require 'bundler/setup'

puts "Bundled Hello!".colorize(:blue)
