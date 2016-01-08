class HaikusApi
  include HTTParty
  headers 'Content-type' => 'application/json'
  format :json
  base_uri 'localhost:3001'

  def create_user(email, password)
    options = { "email": email, "password": password }
    self.class.post("/users", body: options.to_json)
  end
end
