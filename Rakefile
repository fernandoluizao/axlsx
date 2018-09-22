require File.expand_path(File.dirname(__FILE__) + '/lib/axlsx/version')

task :build => :gendoc do
  system "gem build axlsx-alt.gemspec"
end

task :benchmark do
  require File.expand_path(File.dirname(__FILE__) + '/test/benchmark')
end

task :gendoc do
  system "yardoc"
  system "yard stats --list-undoc"
end


require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/tc_*.rb']
  t.verbose = false
  t.warning = true
end

task :release => :build do
  system "gem push axlsx-alt-#{Axlsx::VERSION}.gem"
end

task :default => :test
