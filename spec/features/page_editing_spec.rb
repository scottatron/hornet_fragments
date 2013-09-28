require 'spec_helper'

feature "Page editing" do
  
  scenario "Adding an image to an image fragment" do
    
    # Given a page with an empty image fragment
    mnode = Hornet::Mnode.create!
    fragment = Hornet::Fragments::Image.new 
    fragment.mnode = mnode
    node = Hornet::Page.new
    node.fragments << fragment
    node.save!
    
    # When I visit the fragment based page editing url
    visit hornet_fragments.edit_page_path node
    
    # And I add click the file field and select an image 
    attach_file "page[fragments_attributes][0][mnode_attributes][file]", 'spec/fixtures/640x480.gif'
    
    # And I click on the save page button
    click_on 'Save page'
    
    # Then I should be redirected to the edit URL
    current_path.should == hornet_fragments.edit_page_path(node)

    # And the page should have been updated 
    page.should have_content 'Page updated.'
    
    # And I should see a thumbnail of the uploaded image on the page
    thumb_url = Hornet::Mnode.find(mnode.id).file.thumb('100x100#').url # mnode.reload doesn't seem to pick the file, so find it instead
    page.should have_selector %Q{//img[@src="#{thumb_url}"]}
    
  end
  
  
end