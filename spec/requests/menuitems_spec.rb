require 'rails_helper'

RSpec.describe "Menuitems", type: :request do
  let!(:menuitem) { create(:menuitem) }

  describe "GET /menuitems" do
    it "returns a successful response" do
      get menuitems_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /menuitems/:id" do
    it "returns a successful response" do
      get menuitem_path(menuitem)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /menuitems" do
    let(:menuitem_params) { attributes_for(:menuitem) }

    it "creates a new menuitem and redirects" do
      expect {
        post menuitems_path, params: { menuitem: menuitem_params }
      }.to change(Menuitem, :count).by(1)
      expect(response).to redirect_to(assigns(:menuitem))
    end

    context "with invalid data" do
      let(:invalid_params) { attributes_for(:menuitem, name: nil) }

      it "does not create a menuitem and re-renders the new template" do
        expect {
          post menuitems_path, params: { menuitem: invalid_params }
        }.not_to change(Menuitem, :count)
        expect(response).to have_http_status(:ok)
        expect(response.body).to include("error", "Name")
      end
    end
  end

  describe "PATCH /menuitems/:id" do
    let(:new_name) { "Updated Name" }

    it "updates the menuitem and redirects" do
      patch menuitem_path(menuitem), params: { menuitem: { name: new_name } }
      expect(response).to redirect_to(menuitem_path(menuitem))
      expect(menuitem.reload.name).to eq(new_name)
    end

    context "with invalid data" do
      let(:invalid_update) { { name: nil } }

      it "does not update the menuitem and re-renders the edit template" do
        patch menuitem_path(menuitem), params: { menuitem: invalid_update }
        expect(response).to have_http_status(:ok)
        expect(response.body).to include("error", "Name")
        expect(menuitem.reload.name).not_to be_nil
      end
    end
  end

  describe "DELETE /menuitems/:id" do
    it "deletes the menuitem and redirects" do
      expect {
        delete menuitem_path(menuitem)
      }.to change(Menuitem, :count).by(-1)
      expect(response).to redirect_to(menuitems_path)
    end
  end
end
