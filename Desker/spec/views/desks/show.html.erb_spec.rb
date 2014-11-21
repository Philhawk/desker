require 'rails_helper'

RSpec.describe "desks/show", :type => :view do
  before(:each) do
    @desk = assign(:desk, Desk.create!(
      :title => "Title",
      :description => "Description",
      :price => 1,
      :availability => false,
      :amenities => "MyText",
      :desk_type => "Desk Type",
      :thumbnail => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Desk Type/)
    expect(rendered).to match(/MyText/)
  end
end
