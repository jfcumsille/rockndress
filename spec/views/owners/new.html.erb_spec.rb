require 'rails_helper'

RSpec.describe "owners/new", type: :view do
  before(:each) do
    assign(:owner, Owner.new(
      :photo => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :instagram => "MyString",
      :user => nil,
      :account => nil
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input[name=?]", "owner[photo]"

      assert_select "input[name=?]", "owner[first_name]"

      assert_select "input[name=?]", "owner[last_name]"

      assert_select "input[name=?]", "owner[phone]"

      assert_select "input[name=?]", "owner[instagram]"

      assert_select "input[name=?]", "owner[user_id]"

      assert_select "input[name=?]", "owner[account_id]"
    end
  end
end
