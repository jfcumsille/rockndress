require "rails_helper"

RSpec.describe DressesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dresses").to route_to("dresses#index")
    end

    it "routes to #new" do
      expect(:get => "/dresses/new").to route_to("dresses#new")
    end

    it "routes to #show" do
      expect(:get => "/dresses/1").to route_to("dresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dresses/1/edit").to route_to("dresses#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dresses").to route_to("dresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dresses/1").to route_to("dresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dresses/1").to route_to("dresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dresses/1").to route_to("dresses#destroy", :id => "1")
    end
  end
end
