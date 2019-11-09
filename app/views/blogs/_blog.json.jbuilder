json.extract! blog, :id, :text, :image, :title, :created_at, :updated_at
json.url blog_url(blog, format: :json)
