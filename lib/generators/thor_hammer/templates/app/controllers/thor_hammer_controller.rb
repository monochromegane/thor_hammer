require "thor_hammer/runner"
class ThorHammerController < ApplicationController
  def start
    render text: ThorHammer::Runner.start(params[:thor], params[:subcommand], params[:args]) 
  end
end
