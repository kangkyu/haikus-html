class HaikusApi
  include HTTParty
  headers 'Content-type' => 'application/json'
  format :json
  base_uri 'localhost:3001'

  headers "Authorization" => "Token token=#{ENV['HAIKUS_API_ACCESS_TOKEN']}"

  def self.create_user(user_params)
    post("/users", body: user_params.to_json)
  end
end
