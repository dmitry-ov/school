require "spec_helper"

describe LearnersController do
  describe "routing" do

    it "routes to #index" do
      get("/learners").should route_to("learners#index")
    end

    it "routes to #new" do
      get("/learners/new").should route_to("learners#new")
    end

    it "routes to #show" do
      get("/learners/1").should route_to("learners#show", :id => "1")
    end

    it "routes to #edit" do
      get("/learners/1/edit").should route_to("learners#edit", :id => "1")
    end

    it "routes to #create" do
      post("/learners").should route_to("learners#create")
    end

    it "routes to #update" do
      put("/learners/1").should route_to("learners#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/learners/1").should route_to("learners#destroy", :id => "1")
    end

  end
end
