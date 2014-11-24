require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "textarea#review_comment[name=?]", "review[comment]"
    end
  end
end
