require 'rails_helper'

RSpec.describe "owners/edit", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :photo => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :instagram => "MyString",
      :user => nil,
      :account => nil
    ))
  end

  it "renders the edit owner form" do
    render

    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do

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
