$("#profile-viewpoints").replaceWith("<%= escape_javascript(render(:partial => 'profiles/profile_viewpoints', locals: {user: @profile.user})) %>");
$("#viewpoint-form").replaceWith("<%= escape_javascript(render(:partial => 'viewpoints/remote_form', locals: {viewpoint: Viewpoint.new})) %>");
new Noty({
    type: 'error',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :viewpoint_destroyed_successfully%>'
}).show();
