require 'rails_helper'

RSpec.describe "dresses/new", type: :view do
  before(:each) do
    assign(:dress, Dress.new(
      :description => "MyText",
      :cost => 1,
      :category => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new dress form" do
    render

    assert_select "form[action=?][method=?]", dresses_path, "post" do

      assert_select "textarea[name=?]", "dress[description]"

      assert_select "input[name=?]", "dress[cost]"

      assert_select "input[name=?]", "dress[category]"

      assert_select "input[name=?]", "dress[color]"
    end
  end
end
