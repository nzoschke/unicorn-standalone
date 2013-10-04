require "bundler/gem_tasks"
require "unicorn/standalone/version"

task :gem do
  sh "gem build unicorn-standalone.gemspec"
end

task :install => :gem do
  sh "gem install unicorn-standalone-#{Unicorn::Standalone::VERSION}.gem"
end

