require 'rails_helper'

RSpec.describe "dresses/edit", type: :view do
  before(:each) do
    @dress = assign(:dress, Dress.create!(
      :description => "MyText",
      :cost => 1,
      :category => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit dress form" do
    render

    assert_select "form[action=?][method=?]", dress_path(@dress), "post" do

      assert_select "textarea[name=?]", "dress[description]"

      assert_select "input[name=?]", "dress[cost]"

      assert_select "input[name=?]", "dress[category]"

      assert_select "input[name=?]", "dress[color]"
    end
  end
end
