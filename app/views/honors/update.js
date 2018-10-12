$("#company_honors_list").replaceWith("<%= escape_javascript(render(:partial => 'companies/honors_list', locals: {company: @company})) %>");
$("#company_honors_form").replaceWith("<%= escape_javascript(render(:partial => 'honors/remote_form', locals: {company: @company, honor: Honor.new})) %>");
new Noty({
    type: 'success',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :honor_updated_successfully%>'
}).show();
