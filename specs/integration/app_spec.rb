require_relative "../spec_helper"
require_relative "../../app"

describe "app" do
  def app; App end

  describe "GET '/random'" do
    it "returns a random dog JSON" do
      get "/random"

      expect(last_response).to be_ok
      expect(last_response.body).to have_json_path("message")
    end
  end

  describe "GET '/breeds'" do
    it "returns a breeds JSON" do
      get "/breeds"

      puts last_response.body.inspect
      expect(last_response).to be_ok
    end
  end

  # describe "GET '/random_breed'" do
  #   it "returns a random dog of a specific breed" do
  #     let breed = "yorkshire"
  #      get "/random_breed"
  #       expect(last_response).to be_ok

  #   end
  # end
end
