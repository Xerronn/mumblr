require 'rails_helper.rb'

feature"Blogger adds an article" do
    scenario "Blogger successfully navigates to the new articles page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "Blogger successfully creates a new article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end
    
    scenario "Blogger successfully edits an article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        visit new_article_path
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        visit edit_article_path(Article.find(1))
        fill_in "Title", with:"Edited Capybara Article"
        fill_in "Text", with:"This is an edited Capybara article"
        click_button "Update Article"
        expect(page).to have_content("Edited Capybara Article")
        expect(page).to have_content("This is an edited Capybara article")
    
    end
    
    scenario "Blogger successfully creates a comment" do
        visit new_article_path
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        fill_in "Commenter", with:"Test"
        fill_in "Body", with:"This is a test comment"
        click_button "Create Comment"
        expect(page).to have_content("Test")
        expect(page).to have_content("This is a test comment")
    end
    
end