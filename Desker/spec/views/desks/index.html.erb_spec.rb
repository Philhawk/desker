require 'rails_helper'

RSpec.describe "desks/index", :type => :view do
  before(:each) do
    assign(:desks, [
      Desk.create!(
        :title => "Title",
        :description => "Description",
        :price => 1,
        :availability => false,
        :amenities => "MyText",
        :desk_type => "Desk Type",
        :thumbnail => "MyText"
      ),
      Desk.create!(
        :title => "Title",
        :description => "Description",
        :price => 1,
        :availability => false,
        :amenities => "MyText",
        :desk_type => "Desk Type",
        :thumbnail => "MyText"
      )
    ])
  end

  it "renders a list of desks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Desk Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
