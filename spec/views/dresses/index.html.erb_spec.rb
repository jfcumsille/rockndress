require 'rails_helper'

RSpec.describe "dresses/index", type: :view do
  before(:each) do
    assign(:dresses, [
      Dress.create!(
        :description => "MyText",
        :cost => 2,
        :category => "Category",
        :color => "Color"
      ),
      Dress.create!(
        :description => "MyText",
        :cost => 2,
        :category => "Category",
        :color => "Color"
      )
    ])
  end

  it "renders a list of dresses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
