$("#company_profiles_list").replaceWith("<%= escape_javascript(render(:partial => 'companies/colleagues_list', locals: {company: @company})) %>");
$("#company_profiles_form").replaceWith("<%= escape_javascript(render(:partial => 'profiles/remote_form', locals: {company: @company, profile: Profile.new})) %>");
new Noty({
    type: 'success',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :profile_updated_successfully%>'
}).show();
