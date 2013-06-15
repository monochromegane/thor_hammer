# ThorHammer

ThorHammer provides web api for your Thor CLI.

## Installation

Add this line to your application's Gemfile:

    gem 'thor_hammer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thor_hammer

## Usage

1. Install Thor CLIs in your project.
2. Generate an api like the following.
`rails generate thor_hammer:api thor_cli::class_name api_path`
3. Access the api.
`curl http://hostname/api_path/subcommnad/args1,args2`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
