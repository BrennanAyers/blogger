require 'rails_helper'

RSpec.describe 'As a User', type: :feature do
  describe 'When I visit the Articles Index' do
    before :each do
      @article_1 = Article.create!(title: "Title 1", body: "Body 1")
      @article_2 = Article.create!(title: "Title 2", body: "Body 2")
    end

    it 'I should see all articles' do
      visit articles_path

      expect(page).to have_content(@article_1.title)
      expect(page).to have_content(@article_2.title)

      expect(page).to have_content(@article_1.body)
      expect(page).to have_content(@article_2.body)
    end
  end
end
