# encoding: utf-8

task :default => :test

task :test do
  require 'rake/testtask'
  Rake::TestTask.new do |t|
    t.libs << 'test'
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
  end
end

task :server do
  appdir = File.dirname(__FILE__)
  $LOAD_PATH.unshift appdir unless $LOAD_PATH.include?(appdir)
  require 'ylbai'

  YalongBai.run!
end
