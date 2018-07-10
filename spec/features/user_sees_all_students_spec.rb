require 'rails_helper'

describe 'user sees all students' do
  describe 'they visit /students' do
    it 'displays all students' do
      student_1 = Student.create(name: "Seth", age: 30)
      student_2 = Student.create(name: "Angela", age: 21)

      visit students_path

      expect(page).to have_content("Name: #{student_1.name}")
      expect(page).to have_content("Age: #{student_1.age}")
      expect(page).to have_content("Name: #{student_2.name}")
      expect(page).to have_content("Age: #{student_2.age}")
    end
  end
end
