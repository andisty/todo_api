class TodoApi::Application
  config.middleware.insert_before 0,  "Rack::Cors", debug: true, logger: (-> { Rails.logger }) do
    allow do
      origins '*'

      resource '/cors',
        headers: :any,
        methods: [:post],
        credentials: true,
        max_age: 0

      resource '*',
        headers: :any,
        methods: [:get, :post, :delete, :put, :patch, :options, :head],
        max_age: 0
    end
  end
end
