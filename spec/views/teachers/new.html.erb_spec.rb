require 'spec_helper'

describe "teachers/new" do
  before(:each) do
    assign(:teacher, stub_model(Teacher,
      :name => "MyString",
      :surname => "MyString",
      :phone => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teachers_path, "post" do
      assert_select "input#teacher_name[name=?]", "teacher[name]"
      assert_select "input#teacher_surname[name=?]", "teacher[surname]"
      assert_select "input#teacher_phone[name=?]", "teacher[phone]"
      assert_select "textarea#teacher_note[name=?]", "teacher[note]"
    end
  end
end
