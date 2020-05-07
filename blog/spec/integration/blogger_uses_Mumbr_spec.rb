require 'rails_helper.rb'

feature"Blogger uses Mumblr" do

     scenario "Blogger successfully create an account" do
        visit signup_path
        fill_in "Name", with:"User"
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Create User"
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
    end
    
    scenario "Blogger successfully logins into their account" do
        visit signup_path
        fill_in "Name", with:"User"
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Create User"
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit login_path
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        click_button "Login"
        expect(page).to have_content("Users")
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
    end 
    
    scenario "Blogger successfully creates a new article" do
        visit signup_path
        fill_in "Name", with:"User"
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Create User"
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit login_path
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        click_button "Login"
        expect(page).to have_content("Users")
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end    
    
    scenario "Blogger successfully creates a comment" do 
        visit signup_path
        fill_in "Name", with:"User"
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Create User"
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit login_path
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        click_button "Login"
        expect(page).to have_content("Users")
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        fill_in "Commenter", with:"User"
        fill_in "Body", with: "This is a Capybara Comment"
        click_button "Create Comment"
        expect(page).to have_content("User")
        expect(page).to have_content("This is a Capybara Comment")
    end
    
    scenario "Blogger successfully edits an article" do
        visit signup_path
        fill_in "Name", with:"User"
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        fill_in "Password confirmation", with: "123456"
        click_button "Create User"
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit login_path
        fill_in "Email", with: "user@uncc.edu"
        fill_in "Password", with: "123456"
        click_button "Login"
        expect(page).to have_content("Users")
        expect(page).to have_content("User")
        expect(page).to have_content("user@uncc.edu")
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with:"New Capybara Article"
        fill_in "Text", with:"This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        visit edit_article_path(Article.find(1))
        fill_in "Title", with:"Edited Capybara Article"
        fill_in "Text", with:"This is an edited Capybara article"
        click_button "Update Article"
        expect(page).to have_content("Edited Capybara Article")
        expect(page).to have_content("This is an edited Capybara article")
    end
end