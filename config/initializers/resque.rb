Querydeck::Application.config.after_initialize do
  Resque.redis = $redis
  Resque.redis.namespace = 'resque:querydeck'
end
