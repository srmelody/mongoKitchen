require "spec_helper"

describe DgosController do
  describe "routing" do

    it "routes to #index" do
      get("/dgos").should route_to("dgos#index")
    end

    it "routes to #new" do
      get("/dgos/new").should route_to("dgos#new")
    end

    it "routes to #show" do
      get("/dgos/1").should route_to("dgos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dgos/1/edit").should route_to("dgos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dgos").should route_to("dgos#create")
    end

    it "routes to #update" do
      put("/dgos/1").should route_to("dgos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dgos/1").should route_to("dgos#destroy", :id => "1")
    end

  end
end
