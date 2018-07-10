require 'rails_helper'

describe Student, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end
  describe 'user sees all students' do
    describe 'they visit /students' do
      it 'displays all students' do
        student_1 = Student.create(name: "Seth", age: 30)
        student_2 = Student.create(name: "Angela", age: 21)

        visit students_path

        expect(page).to have_content(student_1.name)
        expect(page).to have_content(student_1.age)
        expect(page).to have_content(student_2.name)
        expect(page).to have_content(student_2.age)
      end
    end
  end
end
