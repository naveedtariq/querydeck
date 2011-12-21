Querydeck::Application.config.after_initialize do
  Split.redis = $redis
  Split.redis.namespace = 'split:querydeck'
end