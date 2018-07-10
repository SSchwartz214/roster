require 'rails_helper'

describe 'user edits a student' do
  describe 'they visit /students/:id/edit' do
    describe 'they fill in an edit form' do
      it 'displays the updated information on a show page' do
        student = Student.create!(name: "Seth")

        visit edit_student_path(student)

        fill_in('student[name]', with: "Kobe")
        click_on "Update"

        expect(page).to have_content("Kobe")
      end
    end
  end
end
