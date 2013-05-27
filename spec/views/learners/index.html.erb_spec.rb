require 'spec_helper'

describe "learners/index" do
  before(:each) do
    assign(:learners, [
      stub_model(Learner,
        :surname => "Surname",
        :name => "Name",
        :school => "School",
        :school_class => "School Class",
        :phone => "Phone",
        :note => "MyText"
      ),
      stub_model(Learner,
        :surname => "Surname",
        :name => "Name",
        :school => "School",
        :school_class => "School Class",
        :phone => "Phone",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of learners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "School Class".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
