require 'rails_helper'

RSpec.describe "owners/index", type: :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        :photo => "Photo",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :instagram => "Instagram",
        :user => nil,
        :account => nil
      ),
      Owner.create!(
        :photo => "Photo",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :instagram => "Instagram",
        :user => nil,
        :account => nil
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
