require 'rails_helper'

RSpec.describe "owners/show", type: :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :photo => "Photo",
      :first_name => "First Name",
      :last_name => "Last Name",
      :phone => "Phone",
      :instagram => "Instagram",
      :user => nil,
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Instagram/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
