require 'rails_helper'

describe "GET /users/new", type: :request do
  it "gets the user create page" do
    get "/users/new"
    expect(response.status).to eq(200)
    expect(response.body).to include("<h1>Create User</h1>")
  end
end

describe 'POST /users', type: :request do
  it "creates a user" do
    VCR.use_cassette('user cassette') do
      post "/users", user: { 'email': 'johndoe@email.com', 'password': 'secret' }
      expect(response.status).to eq(200)
      expect(response.body).to include("<h1>Create User</h1>")
    end
  end
end
