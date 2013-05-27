require 'spec_helper'

describe "learners/edit" do
  before(:each) do
    @learner = assign(:learner, stub_model(Learner,
      :surname => "MyString",
      :name => "MyString",
      :school => "MyString",
      :school_class => "MyString",
      :phone => "MyString",
      :note => "MyText"
    ))
  end

  it "renders the edit learner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", learner_path(@learner), "post" do
      assert_select "input#learner_surname[name=?]", "learner[surname]"
      assert_select "input#learner_name[name=?]", "learner[name]"
      assert_select "input#learner_school[name=?]", "learner[school]"
      assert_select "input#learner_school_class[name=?]", "learner[school_class]"
      assert_select "input#learner_phone[name=?]", "learner[phone]"
      assert_select "textarea#learner_note[name=?]", "learner[note]"
    end
  end
end
