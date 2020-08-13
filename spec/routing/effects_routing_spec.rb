require "rails_helper"

RSpec.describe EffectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/effects").to route_to("effects#index")
    end

    it "routes to #new" do
      expect(get: "/effects/new").to route_to("effects#new")
    end

    it "routes to #show" do
      expect(get: "/effects/1").to route_to("effects#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/effects/1/edit").to route_to("effects#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/effects").to route_to("effects#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/effects/1").to route_to("effects#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/effects/1").to route_to("effects#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/effects/1").to route_to("effects#destroy", id: "1")
    end
  end
end
