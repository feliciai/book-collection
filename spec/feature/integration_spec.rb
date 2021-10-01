# location: spec/features/integration_spec.rb

require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        
        fill_in 'Title', with: 'On the Origin of Species'
        fill_in 'Author', with: 'Charles Darwin'
        fill_in 'Dateofpublication', with: Date.new(2000,1,1)
        fill_in 'Price', with: 1.00

        click_on 'Create Book'
        visit books_path

        expect(page).to have_content('On the Origin of Species')
        expect(page).to have_content('Charles Darwin')
        expect(page).to have_content('2000-01-01')
        expect(page).to have_content(1.00)

    end

    scenario 'valid inputs 2' do
        visit new_book_path
        
        fill_in 'Title', with: "Software Engineering: A Practitioner's Approach"
        fill_in 'Author', with: 'Roger Pressman'
        fill_in 'Dateofpublication', with: Date.new(2000,1,1)
        fill_in 'Price', with: 10.00

        click_on 'Create Book'
        visit books_path

        expect(page).to have_content("Software Engineering: A Practitioner's Approach")
        expect(page).to have_content('Roger Pressman')
        expect(page).to have_content('2000-01-01')
        expect(page).to have_content(10.00)

    end

    scenario 'valid inputs 3' do
        visit new_book_path
        
        fill_in 'Title', with: "Ethics for Engineers"
        fill_in 'Author', with: 'Martin Peterson'
        fill_in 'Dateofpublication', with: Date.new(2000,1,1)
        fill_in 'Price', with: 900.00

        click_on 'Create Book'
        visit books_path

        expect(page).to have_content("Ethics for Engineers")
        expect(page).to have_content('Martin Peterson')
        expect(page).to have_content('2000-01-01')
        expect(page).to have_content(900.00)

    end

    scenario 'valid inputs 4' do
        visit new_book_path
        
        fill_in 'Title', with: "Utopias, Dolphins and Computers"
        fill_in 'Author', with: 'Mary Midgley'
        fill_in 'Dateofpublication', with: Date.new(2000,1,1)
        fill_in 'Price', with: 70.01

        click_on 'Create Book'
        visit books_path

        expect(page).to have_content("Utopias, Dolphins and Computers")
        expect(page).to have_content('Mary Midgley')
        expect(page).to have_content('2000-01-01')
        expect(page).to have_content(70.01)

    end


end