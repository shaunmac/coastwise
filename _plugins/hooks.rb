Jekyll::Hooks.register :pages, :pre_render do |page, payload|
  payload.page["rel_dir"] = File.dirname(page.path)
end

Jekyll::Hooks.register :posts, :pre_render do |post, payload|
  payload.page["rel_dir"] = File.dirname(post.path)
end

Jekyll::Hooks.register :documents, :pre_render do |document, payload|
  payload.page["rel_dir"] = File.dirname(document.path)
end
