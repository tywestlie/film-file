RSpec.describe 'User' do
  it 'should see a welcome message' do
    welcome_msg = 'thanks for stopping by'
    visit('/')

    expect(page).to have_content(welcome_msg)
  end
end
