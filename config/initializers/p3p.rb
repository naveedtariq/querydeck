Querydeck::Application.config.middleware.insert_before ActionDispatch::Session::CookieStore, Rack::P3p