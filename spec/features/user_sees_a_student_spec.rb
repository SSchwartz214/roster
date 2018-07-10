require 'rails_helper'

describe 'user sees a student' do
  describe 'they visit /student' do
    it 'displays a student' do
      student_1 = Student.create(name: "Seth", age: 30)

      visit student_path(student_1)

      expect(page).to have_content("Name: #{student_1.name}")
      expect(page).to have_content("Age: #{student_1.age}")
    end
  end
end
