local comments_status_ok, comments = pcall(require, "Comment")
if comments_status_ok then
  comments.setup()
end

