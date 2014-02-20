require 'rubygems'
require 'bundler/setup'
require 'yaml'

deploy_dir = '_deploy'
current_sha = nil
gh_pages_branch = 'master'
gh_repo = 'git@usasearch-github:usasearch/usasearch.github.com.git'

desc 'setup jekyll site for deployment'
task :setup do
  rm_r Dir.glob("#{deploy_dir}")
  system "git clone -b #{gh_pages_branch} #{gh_repo} #{deploy_dir}"
  cd "#{deploy_dir}" do
    system 'git branch -rd origin/source'
    system 'git config user.name "DigitalGov Search"'
    system 'git config user.email "USASearch@gsa.gov"'
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
    system 'bundle exec jekyll --no-auto --no-server'
    File.open('last_commit.yml', 'w') { |f|  f.write({ sha: current_sha }.to_yaml) }
  end
end

task :deploy => :generate do
  rm_r Dir.glob("#{deploy_dir}/*")
  cp_r '_site/.', "#{deploy_dir}"
  cd "#{deploy_dir}" do
    puts "Updating #{gh_pages_branch} branch using SHA: #{current_sha}"
    system 'git add -A'
    system "git commit -m 'Update pages using SHA: #{current_sha.slice(0, 10)}'"
    system "git push origin #{gh_pages_branch}"
  end
end

