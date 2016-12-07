<h1>Log in</h1>

<%= form_tag login_path do %>
  <p>
    <%= label_tag :email %><br />
    <%= text_field_tag :email, params[:email] %>
  </p>
  <p>
    <%= label_tag :password %><br />
    <%= password_field_tag :password %>
  </p>
  <p class="button"><%= submit_tag "Log in" %></p>
<% end %>