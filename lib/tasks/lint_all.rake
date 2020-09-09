# frozen_string_literal: true

desc 'Run Rubocop on all files'
task lint_all: :environment do
  sh 'rubocop'
end
