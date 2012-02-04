require "spec_helper"

describe DogsController do
  describe "routing" do

    it "routes to #index" do
      get("/dogs").should route_to("dogs#index")
    end

    it "routes to #new" do
      get("/dogs/new").should route_to("dogs#new")
    end

    it "routes to #show" do
      get("/dogs/1").should route_to("dogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dogs/1/edit").should route_to("dogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dogs").should route_to("dogs#create")
    end

    it "routes to #update" do
      put("/dogs/1").should route_to("dogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dogs/1").should route_to("dogs#destroy", :id => "1")
    end

  end
end
