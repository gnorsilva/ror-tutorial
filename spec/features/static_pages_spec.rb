require 'spec_helper'

describe "Static pages" do

  [{title: 'Home',  h1_text: 'Sample App'},
   {title: 'Help',  h1_text: 'Help!'},
   {title: 'About', h1_text: 'About Us'},
   {title: 'Contact', h1_text: 'Contact Us'}
  ].each do |values|

    describe "#{values[:title]} page" do
      before { visit "/static_pages/#{values[:title].downcase}" }

      it { page.should have_title("Ruby on Rails Tutorial Sample App | #{values[:title]}") }

      it { page.should have_selector('h1', text: values[:h1_text]) }
    end
  end

end

