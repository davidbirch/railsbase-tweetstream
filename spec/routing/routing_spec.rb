require "spec_helper"

describe "routing: " do

  it "to /" do
    get("/").should route_to("pages#home")
  end

  it "to /api/v1/raw_tweets.json" do
    get("/api/v1/raw_tweets.json").should route_to(
      :controller => "api/v1/raw_tweets",
      :action => "index",
      :format => "json"
    )
  end

  it "to /api/v1/raw_tweets/1.json" do
    get("/api/v1/raw_tweets/1.json").should route_to(
      :controller => "api/v1/raw_tweets",
      :action => "show",
      :format => "json",
      :id => "1"
    )
  end

  it "to /contact" do
    get("/contact").should route_to("pages#contact")
  end

  it "to /contact" do
    get("/contact").should route_to("pages#contact")
  end

  it "to /about" do
    get("/about").should route_to("pages#about")
  end
  
  it "to /signin" do
    get("/signin").should route_to("sessions#new")
  end
  
  it "to /signout" do
    get("/signout").should route_to("sessions#destroy")
  end
  
  it "to /auth/failure" do
    get("/auth/failure").should route_to("sessions#failure")
  end
  
  it "to /auth/:provider/callback" do
    get("/auth/provider/callback").should route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "provider"
    )
  end
  
  it "routes to #index" do
    get("/filters").should route_to("filters#index")
  end

  it "routes to #new" do
    get("/filters/new").should route_to("filters#new")
  end

  it "routes to #show" do
    get("/filters/1").should route_to("filters#show", :id => "1")
  end

  it "routes to #edit" do
    get("/filters/1/edit").should route_to("filters#edit", :id => "1")
  end

  it "routes to #create" do
    post("/filters").should route_to("filters#create")
  end

  it "routes to #update" do
    put("/filters/1").should route_to("filters#update", :id => "1")
  end

  it "routes to #destroy" do
    delete("/filters/1").should route_to("filters#destroy", :id => "1")
  end
  
  it "routes to #index" do
      get("/keywords").should route_to("keywords#index")
    end

  it "routes to #new" do
    get("/keywords/new").should route_to("keywords#new")
  end

  it "routes to #show" do
    get("/keywords/1").should route_to("keywords#show", :id => "1")
  end

  it "routes to #edit" do
    get("/keywords/1/edit").should route_to("keywords#edit", :id => "1")
  end

  it "routes to #create" do
    post("/keywords").should route_to("keywords#create")
  end

  it "routes to #update" do
    put("/keywords/1").should route_to("keywords#update", :id => "1")
  end

  it "routes to #destroy" do
    delete("/keywords/1").should route_to("keywords#destroy", :id => "1")
  end
  
end
