require "spec_helper"

describe HowsController do
  describe "routing" do

    it "routes to #index" do
      get("/hows").should route_to("hows#index")
    end

    it "routes to #new" do
      get("/hows/new").should route_to("hows#new")
    end

    it "routes to #show" do
      get("/hows/1").should route_to("hows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hows/1/edit").should route_to("hows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hows").should route_to("hows#create")
    end

    it "routes to #update" do
      put("/hows/1").should route_to("hows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hows/1").should route_to("hows#destroy", :id => "1")
    end

  end
end
