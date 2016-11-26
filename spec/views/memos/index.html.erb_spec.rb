require 'rails_helper'

RSpec.describe "memos/index", type: :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :title => "Title",
        :body => "Body"
      ),
      Memo.create!(
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
