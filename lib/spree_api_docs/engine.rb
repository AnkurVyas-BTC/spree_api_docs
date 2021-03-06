module SpreeApiDocs
  class Engine < ::Rails::Engine
    isolate_namespace SpreeApiDocs

    initializer "static assets" do |app|
      app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
    end
  end
end
