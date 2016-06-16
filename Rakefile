require 'rubygems'
require 'bundler/setup'
require 'yaml'

deploy_dir = '_deploy'
current_sha = nil
gh_pages_branch = 'gh-pages'
gh_repo = 'git@github.com:GSA/search.digitalgov.gov.git'

desc 'setup jekyll site for deployment'
task :setup do
  rm_r Dir.glob("#{deploy_dir}")
  system "git clone -b #{gh_pages_branch} #{gh_repo} #{deploy_dir}"
  cd "#{deploy_dir}" do
    system 'git branch -rd origin/master'
    system 'git config user.name "DigitalGov Search"'
    system 'git config user.email "search@support.digitalgov.gov"'
  end
end

task :generate do
  puts 'comparing git SHA'
  previous_sha = YAML.load(File.open('last_commit.yml'))[:sha] rescue nil
  puts "previous sha: #{previous_sha}"
  current_sha = `git log --format=%H -n1`.strip
  puts "current sha: #{current_sha}"
  if !current_sha.empty? && previous_sha != current_sha
    system 'bundle exec compass clean'
    system 'bundle exec compass compile'
    system 'bundle exec jekyll build'
    File.open('last_commit.yml', 'w') { |f|  f.write({ sha: current_sha }.to_yaml) }
  end
end

task :deploy => :generate do
  cd("#{deploy_dir}") do
    system 'git reset --hard origin/gh-pages'
    system 'git pull origin gh-pages'
  end
  rm_r Dir.glob("#{deploy_dir}/*")
  cp_r '_site/.', "#{deploy_dir}"
  cd "#{deploy_dir}" do
    puts "Updating #{gh_pages_branch} branch using SHA: #{current_sha}"
    File.new('.nojekyll', 'w').close
    system 'git add -A'
    system "git commit -m 'Update pages using SHA: #{current_sha.slice(0, 10)}'"
    system "git push origin #{gh_pages_branch}"
  end
end

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :default => :spec
rescue LoadError
  # no rspec available
end
