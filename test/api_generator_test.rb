require "rails"
require "test/unit"
require "rails/generators"
require "generators/thor_hammer/api_generator"

class ApiGeneratorTest < Rails::Generators::TestCase
  tests ThorHammer::ApiGenerator  
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination, :initialize_routes

  def initialize_routes
    Dir::mkdir("tmp/config")
    f = File.open("tmp/config/routes.rb", "w")
    f.print <<-EOH
Sample::Application.routes.draw do
end
    EOH
    f.close
  end

  test "Assert thor hammer controller file created" do
    run_generator(["ThorTask::ClassName", "api_path"])

    assert_file "app/controllers/thor_hammer_controller.rb", /class ThorHammerController < ApplicationController/
    assert_file "app/controllers/thor_hammer_controller.rb", /def start/

    assert_file "config/routes.rb", /match \"api_path/
  end

  test "Assert routes added if specified api_path" do
    run_generator(["ThorTask::ClassName", "api_path"])
    assert_file "config/routes.rb", /match \"api_path/
  end

  test "Assert routes added if not specified api_path" do
    run_generator(["ThorTask::ClassName"])
    assert_file "config/routes.rb", /match \"thor_task\/class_name/
  end

end
