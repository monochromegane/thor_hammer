module ThorHammer
  class ApiGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def create_api
      thor = @args.shift.underscore
      api  = @args.shift || thor
      route api_routing(thor, api)
      template "app/controllers/thor_hammer_controller.rb" 
    end

    private

    def api_routing(thor, api)
      %Q(match "#{api}(/:subcommand(/:args))" => "thor_hammer#start", :defaults => {:thor => "#{thor}"})
    end

  end
end
