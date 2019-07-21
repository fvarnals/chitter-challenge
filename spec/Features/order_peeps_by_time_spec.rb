# As a maker
# So that I can see what others are saying
# I want to see all peeps in reverse chronological order
feature "View messages in reverse chronological order" do
  scenario "" do
    visit('/')
    fill_in 'peep', with: 'First post'
    click_button('Post Peep')
    visit('/')
    fill_in 'peep', with: 'Second post'
    click_button('Post Peep')
    expect('Second post').to appear_before('First post')
  end
end
