%w{ rubygems bundler find rake/testtask}.each { |lib| require lib }

task :default => :list

task :list do
  exec "rake -T"
end

Rake::TestTask.new(:requests) do |t|  # Acceptance testing of API calls / JSON requests
  t.test_files = FileList['test/requests/*.rb']
end

Rake::TestTask.new(:features) do |t|  # Acceptance testing of features using headless browser
  t.test_files = FileList['test/features/*.rb']
end

Rake::TestTask.new(:methods) do |t|  # Unit testing
  t.test_files = FileList['test/methods/*.rb']
end

Rake::TestTask.new(:all) do |t|      # Run all test suites
  all_tests =  FileList['test/requests/*.rb']   # Acceptance testing of API calls / JSON requests
  all_tests += FileList['test/features/*.rb']   # Acceptance testing of features using headless browser
  all_tests += FileList['test/methods/*.rb']    # Unit testing
  t.test_files = all_tests
end
