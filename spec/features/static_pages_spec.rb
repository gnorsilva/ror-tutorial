require 'spec_helper'

describe "Static pages" do

  [{path: 'root_path', title: 'Home',  h1_text: 'Sample App'},
   {path: 'help_path', title: 'Help',  h1_text: 'Help!'},
   {path: 'about_path', title: 'About', h1_text: 'About Us'},
   {path: 'contact_path', title: 'Contact', h1_text: 'Contact Us'}
  ].each do |values|

    describe "#{values[:title]} page" do
      before { visit eval(values[:path]) }

      it { page.should have_title("Ruby on Rails Tutorial Sample App | #{values[:title]}") }

      it { page.should have_selector('h1', text: values[:h1_text]) }
    end
  end

end

