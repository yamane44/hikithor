require 'spec_helper'

RSpec.describe 'fizzbuzz command', type: :aruba do
  context 'version option' do
    before(:each) { run('fizzbuzz v') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output("0.1.0") }
  end

  context 'help option' do
    expected = <<~EXPECTED
    Commands:
      fizzbuzz fizzbuzz        # Get fizzbuzz result from limit number
      fizzbuzz help [COMMAND]  # Describe available commands or one specific command
      fizzbuzz version         # version

    Options:
      -h, [--help], [--no-help]        # help message.
          [--version], [--no-version]  # version
      -d, [--debug], [--no-debug]      # debug mode
EXPECTED

    before(:each) { run('fizzbuzz help') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'fizzbuzz subcommand' do
    expected = %w(FizzBuzz 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz).join(',')
    before(:each) { run('fizzbuzz fizzbuzz 15') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'fizzbuzz subcommand invalid args' do
    before(:each) { run('fizzbuzz fizzbuzz a') }
    it { expect(last_command_started).not_to be_successfully_executed }
  end
end
