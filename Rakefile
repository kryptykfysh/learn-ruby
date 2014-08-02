require 'rake/testtask'
require 'yard'

task :default => :test

task :test do
  Dir.glob('./test/**/*_test.rb').each { |file| require file}
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['test/**/*_test.rb']   # optional
  # t.options = ['--any', '--extra', '--opts'] # optional
end
