require 'rails_helper'

RSpec.describe "memos/show", type: :view do
  before(:each) do
    @memo = assign(:memo, Memo.create!(
      :title => "Title",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
  end
end
