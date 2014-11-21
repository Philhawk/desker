require 'rails_helper'

RSpec.describe "venues/edit", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "MyString",
      :location => "MyString",
      :contact => "MyText",
      :no_desks => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_location[name=?]", "venue[location]"

      assert_select "textarea#venue_contact[name=?]", "venue[contact]"

      assert_select "input#venue_no_desks[name=?]", "venue[no_desks]"

      assert_select "textarea#venue_description[name=?]", "venue[description]"
    end
  end
end
