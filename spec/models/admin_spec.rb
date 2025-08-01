
require 'rails_helper'
require 'faker'

RSpec.describe Admin, type: :model do
  it 'is valid with valid attributes' do
    admin = Admin.new(
      name: Faker::Name.name,
      email: Faker::Internet.unique.email,
      password_digest: Faker::Internet.password(min_length: 8)
    )
    expect(admin).to be_valid
  end

  it 'is invalid without a name' do
    admin = Admin.new(
      name: nil,
      email: Faker::Internet.unique.email,
      password_digest: Faker::Internet.password(min_length: 8)
    )
    expect(admin).not_to be_valid
    expect(admin.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    admin = Admin.new(
      name: Faker::Name.name,
      email: nil,
      password_digest: Faker::Internet.password(min_length: 8)
    )
    expect(admin).not_to be_valid
    expect(admin.errors[:email]).to include("can't be blank")
  end

  it 'is invalid without a password_digest' do
    admin = Admin.new(
      name: Faker::Name.name,
      email: Faker::Internet.unique.email,
      password_digest: nil
    )
    expect(admin).not_to be_valid
    expect(admin.errors[:password_digest]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email' do
    email = Faker::Internet.unique.email
    Admin.create!(name: Faker::Name.name, email: email, password_digest: Faker::Internet.password(min_length: 8))
    admin = Admin.new(name: Faker::Name.name, email: email, password_digest: Faker::Internet.password(min_length: 8))
    expect(admin).not_to be_valid
    expect(admin.errors[:email]).to include('has already been taken')
  end
end
