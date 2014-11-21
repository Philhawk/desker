require 'rails_helper'

RSpec.describe "desks/edit", :type => :view do
  before(:each) do
    @desk = assign(:desk, Desk.create!(
      :title => "MyString",
      :description => "MyString",
      :price => 1,
      :availability => false,
      :amenities => "MyText",
      :desk_type => "MyString",
      :thumbnail => "MyText"
    ))
  end

  it "renders the edit desk form" do
    render

    assert_select "form[action=?][method=?]", desk_path(@desk), "post" do

      assert_select "input#desk_title[name=?]", "desk[title]"

      assert_select "input#desk_description[name=?]", "desk[description]"

      assert_select "input#desk_price[name=?]", "desk[price]"

      assert_select "input#desk_availability[name=?]", "desk[availability]"

      assert_select "textarea#desk_amenities[name=?]", "desk[amenities]"

      assert_select "input#desk_desk_type[name=?]", "desk[desk_type]"

      assert_select "textarea#desk_thumbnail[name=?]", "desk[thumbnail]"
    end
  end
end
