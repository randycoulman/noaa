# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require 'rubygems'
require 'pry'
require 'vcr'

APP_ROOT = File.expand_path('../..', __FILE__)
$: << File.join(APP_ROOT, 'lib/')
require 'noaa'

VCR.configure do |c|
  c.cassette_library_dir = File.join(APP_ROOT, 'spec/vcr')
  c.hook_into :webmock
end

Dir[File.join(APP_ROOT, 'spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
