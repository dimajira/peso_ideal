require "spec_helper"

describe DatosController do
  describe "routing" do

    it "routes to #index" do
      get("/datos").should route_to("datos#index")
    end

    it "routes to #new" do
      get("/datos/new").should route_to("datos#new")
    end

    it "routes to #show" do
      get("/datos/1").should route_to("datos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/datos/1/edit").should route_to("datos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/datos").should route_to("datos#create")
    end

    it "routes to #update" do
      put("/datos/1").should route_to("datos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/datos/1").should route_to("datos#destroy", :id => "1")
    end

  end
end
