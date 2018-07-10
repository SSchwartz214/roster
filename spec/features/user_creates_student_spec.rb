require 'rails_helper'

describe 'user creates a student' do
  describe 'they visit /students/new' do
    describe 'they fill in a name' do
      it 'creates a new student' do

        visit new_student_path

        fill_in('student[name]', with: "Angela")
        click_on "Create Student"

        expect(page).to have_content("Name: Angela")
      end
    end
  end
end
