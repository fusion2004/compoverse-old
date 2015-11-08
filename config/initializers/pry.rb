env = Rails.env.upcase
Pry.config.prompt_name = if env.starts_with?("D")
  Pry::Helpers::Text.green(env)
else
  Pry::Helpers::Text.red(env)
end
