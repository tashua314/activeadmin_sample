class BlogsController < InheritedResources::Base

  private

    def blog_params
      params.require(:blog).permit(:text, :image, :title)
    end

end
