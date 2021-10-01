# location: spec/unit/unit_spec.rb

require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'On the Origin of Species',
                            author: 'Charles Darwin',
                            dateOfPublication: Date.new(2000,1,1),
                            price: 1.00)
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a dateOfPublication' do
        subject.dateOfPublication = nil
        expect(subject).not_to be_valid
    end

end