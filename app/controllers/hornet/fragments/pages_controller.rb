module Hornet::Fragments
  class PagesController < HornetController
    respond_to :html
    
    def edit
      @page = Hornet::Node.find params[:id]
    end
  
    def update
      @page = Hornet::Node.find params[:id]
      if @page.update_attributes params[:page]
        flash[:notice] = 'Page updated.'
      end
      respond_with @page, location: edit_page_path(@page)
    end
    
  end
end
