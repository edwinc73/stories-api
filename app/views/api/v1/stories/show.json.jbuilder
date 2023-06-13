json.extract! @story, :id, :name, :text, :comments
json.comments @story.comments do |comment|
  json.extract! comment, :id, :name, :content
  json.created_at comment.created_at.strftime("at %I:%M%p")
end
