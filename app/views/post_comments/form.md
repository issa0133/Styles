<div>
<%= form_with(model: [@post_image, @post_comment], local: true) do |f| %>
  <%= f.text_area :comment, rows:"5", placeholder: "コメントを記入" %>
  <%= f.submit "送信する" %>
<% end %>
</div>