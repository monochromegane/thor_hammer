module ThorHammer
  class Railtie < Rails::Railtie
    generators do
      require "generators/thor_hammer/api_generator"
    end
  end
end
