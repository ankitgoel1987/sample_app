require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    before { visit root_path }

  	it "should have the content and h1 'Sample App'" do
  		page.should have_content('Sample App')
      page.should have_selector('h1', text: 'Sample App')
  	end  

    it "should have the base title" do
      page.should have_selector('title', text: "Sample App")
    end

    it "should not have the custom page title" do
      page.should_not have_selector('title', text: "| Home")
    end

  end

  describe "Help page" do

    before { visit help_path }

  	it "should have the content and h1 'Help'" do
  		page.should have_content('Help')
      page.should have_selector('h1', text: 'Help')
  	end  

    it "should have the right title" do
      page.should have_selector('title', text: "Sample App | Help")
    end

  end

  describe "About page" do

    before { visit about_path }

  	it "should have the content and h1 'About Us'" do
  		page.should have_content('About Us')
      page.should have_selector('h1', text: 'About Us')
  	end  

    it "should have the right title" do
      page.should have_selector('title', text: "Sample App | About Us")
    end
  end

  describe "Contact page" do

    before { visit contact_path }

    it "should have the content 'Contact'" do
      page.should have_content('Contact')
      page.should have_selector('h1', text: 'Contact')
    end  

    it "should have the right title" do
      page.should have_selector('title', text: "Sample App | Contact")
    end
  end

end
