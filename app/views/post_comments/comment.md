<div>
  <p><% @post_image.post_comments.each do |post_comment| %></p>
    <p><%= attachment_image_tag post_comment.user, :image, size: "50x50" %></p>
    <%= post_comment.comment %><%= post_comment.created_at.strftime("%Y/%m/%d") %>
    <% if post_comment.user == current_user %>
    <div>
      <%= link_to "削除", post_image_post_comment_path(post_comment.post_image, post_comment), method: :delete %>
    </div>
    <% end %>
  <% end %>
</div>