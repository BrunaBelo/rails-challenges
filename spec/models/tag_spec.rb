require 'rails_helper'

RSpec.describe Tag, type: :model do 
    subject { described_class.new(name: "Tag Test", color: "#ccff33") }

    it "is valid with valid attributes" do
        expect(subject.valid?).to be_truthy
    end

    it "is not valid without a name" do
        subject.name = nil
        expect(subject.valid?).to be_falsey
    end

    it "is not valid without a color" do
        subject.color = nil
        expect(subject.valid?).to be_falsey
    end
end