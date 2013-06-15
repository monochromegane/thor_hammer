require "rails"
require "test/unit"
require "thor_hammer/runner"
require "sample_thor_cli/runner"

class RunnerTest < Test::Unit::TestCase

  test "Assert thor hammer runs thor cli with subcommand" do
    output = ThorHammer::Runner.start("sample_thor_cli/runner", "echo")
    assert_equal("", output.chomp)
  end

  test "Assert thor hammer runs thor cli with subcommand and a argument" do
    output = ThorHammer::Runner.start("sample_thor_cli/runner", "echo", "hoge")
    assert_equal("hoge", output.chomp)
  end

  test "Assert thor hammer runs thor cli with subcommand and arguments" do
    output = ThorHammer::Runner.start("sample_thor_cli/runner", "echo", "hoge,fuga")
    assert_equal("hoge fuga", output.chomp)
  end

end

