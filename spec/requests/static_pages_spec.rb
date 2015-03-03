require 'spec_helper'

include ApplicationHelper

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(page_title) }
  end

  describe "Home page" do
    before { visit '/static_pages/home' }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit '/static_pages/help' }
    let(:heading)    { 'Help' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_content('Help') }
  end

  describe "About page" do
    before { visit '/static_pages/about' }
    let(:heading)    { 'About Us' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should have_content('About') }
  end

  describe "Contact page" do
    before { visit '/static_pages/contact' }
    let(:heading)    { 'Contact' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
  end
end