module Healthcheck
  class Engine < ::Rails::Engine
    isolate_namespace Healthcheck

    config.after_initialize do |app|
      app.routes.prepend do
        mount Healthcheck::Engine => '/'
      end
    end
  end
end
