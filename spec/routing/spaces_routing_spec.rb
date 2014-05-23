require "spec_helper"

describe SpacesController do
  describe "routing" do

    it "routes to #index" do
      get("/spaces").should route_to("spaces#index")
    end

    it "routes to #new" do
      get("/spaces/new").should route_to("spaces#new")
    end

    it "routes to #show" do
      get("/spaces/1").should route_to("spaces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spaces/1/edit").should route_to("spaces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spaces").should route_to("spaces#create")
    end

    it "routes to #update" do
      put("/spaces/1").should route_to("spaces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spaces/1").should route_to("spaces#destroy", :id => "1")
    end

  end
end
