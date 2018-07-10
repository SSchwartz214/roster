require "rails_helper"

describe "user deletes a student" do
  describe "they vist /students" do
    describe "they click on delete next to a students name"
      it "displays all students without the deleted entry" do
        student1 = Student.create!(name: "Seth")
        student_2 = Student.create!(name: "Angela")

        visit students_path
        click_link "Delete"

        expect(current_path).to eq(students_path)
        expect(page).to have_content(student_2.name)
        expect(page).to_not have_content(student1.name)
    end
  end
end
