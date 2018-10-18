$("#viewpoint-comments-<%= @item.id%>").replaceWith("<%= escape_javascript(render(:partial => 'viewpoints/viewpoint_comments', locals: {viewpoint: @item})) %>");
new Noty({
    type: 'error',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :comment_destroyed_successfully%>'
}).show();
