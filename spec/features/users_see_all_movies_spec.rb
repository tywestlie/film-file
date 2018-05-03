RSpec.describe 'Visitors' do
  it 'should show users all movies'do
    movie_title = 'Avatar: Part 2'
    movie = Film.create(title: movie_title, year: 2019, box_office_sales: 0)
    visit('/flims')

    expect(page).to have_content(movie.title)
    expect(page).to have_content(movie.year)
    expect(page).to have_content(movie.box_office_sales)
  end
end
