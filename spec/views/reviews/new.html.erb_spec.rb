require 'rails_helper'

RSpec.describe "reviews/new", :type => :view do
  before(:each) do
    assign(:review, Review.new(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "textarea#review_comment[name=?]", "review[comment]"
    end
  end
end
