require 'spec_helper'

describe "teachers/edit" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher,
      :name => "MyString",
      :surname => "MyString",
      :phone => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do
      assert_select "input#teacher_name[name=?]", "teacher[name]"
      assert_select "input#teacher_surname[name=?]", "teacher[surname]"
      assert_select "input#teacher_phone[name=?]", "teacher[phone]"
      assert_select "textarea#teacher_note[name=?]", "teacher[note]"
    end
  end
end
