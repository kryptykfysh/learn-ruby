ENV['RACK_ENV'] = 'test'

require 'minitest/reporters'
require 'minitest/autorun'
require 'rack/test'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::ProgressReporter.new]
