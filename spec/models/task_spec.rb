require 'rails_helper'

RSpec.describe Task, type: :model do 
    subject { described_class.new(description: "user@gmail.com", date: "2020-11-20", user: nil, tags: []) }

    it "is valid with valid attributes" do
        subject.tags = [Tag.new(name: "Tag Test", color: "#ccff33")]
        subject.user = User.new(email: "user@gmail.com", password: "123456", password_confirmation: "123456")
        expect(subject.valid?).to be_truthy
    end

    it "is valid without tags" do
        subject.user = User.new(email: "user@gmail.com", password: "123456", password_confirmation: "123456")
        expect(subject.valid?).to be_truthy
    end

    it "is not valid without a user" do
        subject.tags = [Tag.new(name: "Tag Test", color: "#ccff33")]
        subject.user = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a description" do
        subject.tags = [Tag.new(name: "Tag Test", color: "#ccff33")]
        subject.user = User.new(email: "user@gmail.com", password: "123456", password_confirmation: "123456")
        subject.description = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a date" do
        subject.tags = [Tag.new(name: "Tag Test", color: "#ccff33")]
        subject.user = User.new(email: "user@gmail.com", password: "123456", password_confirmation: "123456")
        subject.date = nil
        expect(subject.valid?).to be_falsey
    end

    it "valid many tags" do
        subject.tags = [Tag.new(name: "Tag Test", color: "#ccff33"), Tag.new(name: "Tag Test", color: "#ccff33")]
        subject.user = User.new(email: "user@gmail.com", password: "123456", password_confirmation: "123456")
        expect(subject.valid?).to be_truthy
    end
end