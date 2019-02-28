require 'rails_helper'

RSpec.describe "dresses/show", type: :view do
  before(:each) do
    @dress = assign(:dress, Dress.create!(
      :description => "MyText",
      :cost => 2,
      :category => "Category",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Color/)
  end
end
