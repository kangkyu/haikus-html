class HaikusApi
  include HTTParty
  headers 'Content-type' => 'application/json'
  format :json
  base_uri 'localhost:3001'

  def initialize(token)
    @auth = {"Authorization" => "Token token=#{token}"}
  end

  def create_user(user_params)
    self.class.post("/users", body: user_params.to_json, headers: @auth)
  end
end
