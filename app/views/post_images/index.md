<%= render "searches/genre_search", genres: @genres %>
<%= link_to post_images_path, method: :get do %>
  <h2>新着投稿</h2>
<% end %>
<%= link_to follower_post_post_images_path, method: :get do %>
  <h2>タイムライン</h2>
<% end %>
<% @post_images.each do |post_image| %>
<div>
  <%= link_to post_image_path(post_image.id) do %>
    <%= attachment_image_tag post_image, :image, size: "240x180" %>
  <% end %>
</div>
<div>
  <%= link_to user_path(post_image.user.id) do %>
    <%= attachment_image_tag post_image.user, :image, size: "50x50", fallback: "no_image.jpeg" %>
  <% end %>
  <%= post_image.user.name %>
  <% if post_image.user != current_user %>
    <%= render "users/follow_system", obj: post_image.user %>
  <% end %>
</div>
<% end %>