require 'rails_helper'

RSpec.describe "memos/new", type: :view do
  before(:each) do
    assign(:memo, Memo.new(
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new memo form" do
    render

    assert_select "form[action=?][method=?]", memos_path, "post" do

      assert_select "input#memo_title[name=?]", "memo[title]"

      assert_select "input#memo_body[name=?]", "memo[body]"
    end
  end
end
