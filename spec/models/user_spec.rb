require 'rails_helper'

RSpec.describe User, type: :model do 
    subject { described_class.new(email: "root@gmail.com", password: "123456", password_confirmation: "123456") }

    it "is valid with valid attributes" do
        expect(subject.valid?).to be_truthy
    end

    it "is not valid  password with less than 6 characters" do
        subject.password = "12345"
        subject.password_confirmation = "12345"
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a email" do
        subject.email = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a password" do
        subject.password = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a password_confirmation" do
        subject.password_confirmation = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid incorrect password_confirmation" do
        subject.password = "123456"
        subject.password_confirmation = "654321"
        expect(subject.valid?).to be_falsey
    end
end