%w{ rubygems bundler find rake/testtask}.each { |lib| require lib }

task :default => :list

task :list do
  exec "rake -T"
end

# TODO: Make it possible to attach the description straight to the Rake::TestTask definition. The ugly trick defining the task first using desc and task is just a temporary workaround, as it seems TestTask.new doesn't support custom descriptions.

desc "Acceptance testing of features using headless browser and Capybara"
task :acceptance do end
Rake::TestTask.new(:acceptance) do |t|
  t.test_files = FileList['test/acceptance/*.rb']
end

desc "Unit testing of pure business logic"
task :business_logic do end
Rake::TestTask.new(:business_logic) do |t|
  t.test_files = FileList['test/business_logic/*.rb']
end

desc "Unit testing of database calls"
task :database_calls do end
Rake::TestTask.new(:database_calls) do |t|
  t.test_files = FileList['test/database_calls/*.rb']
end

desc "Acceptance testing of HTTP requests / API calls / JSON requests"
task :requests do end
Rake::TestTask.new(:requests) do |t|
  t.test_files = FileList['test/requests/*.rb']
end

desc "Run all test suites"
task :all do end
Rake::TestTask.new(:all) do |t|
  all_tests  = FileList['test/business_logic/*.rb']
  all_tests += FileList['test/database_calls/*.rb']
  all_tests += FileList['test/acceptance/*.rb']
  all_tests += FileList['test/requests/*.rb']
  t.test_files = all_tests
end
