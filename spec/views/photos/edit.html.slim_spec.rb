require 'rails_helper'

RSpec.describe 'photos/edit', type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
                              image: 'MyString'
    ))
  end

  it 'renders the edit photo form' do
    render

    assert_select 'form[action=?][method=?]', photo_path(@photo), 'post' do
      assert_select 'input[name=?]', 'photo[image]'
    end
  end
end
