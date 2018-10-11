$("#company_profiles_form").replaceWith("<%= escape_javascript(render(:partial => 'profiles/remote_form', locals: {company: @company, profile: @profile})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_profile%>'
}).show();
