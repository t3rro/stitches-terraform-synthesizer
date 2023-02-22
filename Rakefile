# frozen_string_literal: true

require %(bundler/gem_tasks)
require %(rubocop/rake_task)
require %(rspec/core/rake_task)
require %(erb)
require_relative %(./lib/stitches/synthesizer/terraform/version)

$_c = {
  pkg_repo: %(https://rubygems.pkg.github.com/t3rro),
  pkg_path: %(pkg/stitches-terraform-synthesizer-#{Stitches::Synthesizer::Terraform::VERSION}.gem)
}

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = [%(--display-cop-names)]
end

desc %(install package and test)
task :test do
  %w[
    rubocop
    install
    spec
  ].each do |subtask|
    Rake::Task[subtask]
      .invoke
  end
end

task :default do
  Rake::Task[%(test)].invoke
end

# Github Packages publishing
namespace :gem do
  task :push do
    mkdir_p %(pkg)
    Rake::Task[%(build)].invoke
    cmd = []
    cmd << %(gem push)
    cmd << %(--key github)
    cmd << %(--host #{$_c[:pkg_repo]})
    cmd << $_c[:pkg_path]
    system(cmd.join(%( )))
  end
end
