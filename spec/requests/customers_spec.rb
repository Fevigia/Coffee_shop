require 'rails_helper'

RSpec.describe "Customers", type: :request do
  let!(:customer) { create(:customer) }

  describe "GET /customers" do
    it "returns a successful response" do
      get customers_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /customers/:id" do
    it "returns a successful response" do
      get customer_path(customer)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /customers" do
    let(:customer_params) { attributes_for(:customer) }

    it "creates a new customer and redirects" do
      expect {
        post customers_path, params: { customer: customer_params }
      }.to change(Customer, :count).by(1)
      expect(response).to redirect_to(assigns(:customer))
    end

    context "with invalid data" do
      let(:invalid_params) { attributes_for(:customer, email: nil) }

      it "does not create a customer and re-renders the new template" do
        expect {
          post customers_path, params: { customer: invalid_params }
        }.not_to change(Customer, :count)
        expect(response).to have_http_status(:ok)
        expect(response.body).to include("error", "Email")
      end
    end
  end

  describe "PATCH /customers/:id" do
    let(:new_fname) { Faker::Name.first_name }

    it "updates the customer and redirects" do
      patch customer_path(customer), params: { customer: { fname: new_fname } }
      expect(response).to redirect_to(customer_path(customer))
      expect(customer.reload.fname).to eq(new_fname)
    end

    context "with invalid data" do
      let(:invalid_update) { { email: nil } }

      it "does not update the customer and re-renders the edit template" do
        patch customer_path(customer), params: { customer: invalid_update }
        expect(response).to have_http_status(:ok)
        expect(response.body).to include("error", "Email")
        expect(customer.reload.email).not_to be_nil
      end
    end
  end

  describe "DELETE /customers/:id" do
    it "deletes the customer and redirects" do
      expect {
        delete customer_path(customer)
      }.to change(Customer, :count).by(-1)
      expect(response).to redirect_to(customers_path)
    end
  end
end
