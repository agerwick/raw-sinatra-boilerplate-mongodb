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
