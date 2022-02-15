<% if @post_image.favorited_by?(current_user) %>
  <%= link_to post_image_favorites_path(@post_image), method: :delete do %>
    <i class="fas fa-heart" style="color:red;"><%= @post_image.favorites.count %></i>
  <% end %>
<% else %>
  <%= link_to post_image_favorites_path(@post_image), method: :post do %>
    <i class="fas fa-heart" style="color:blue;"><%= @post_image.favorites.count %></i>
  <% end %>
<% end %>