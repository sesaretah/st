$("#company_certifications_list").replaceWith("<%= escape_javascript(render(:partial => 'companies/certifications_list', locals: {company: @company})) %>");
$("#company_earnings_form").replaceWith("<%= escape_javascript(render(:partial => 'earnings/remote_form', locals: {company: @company, earning: Earning.new})) %>");
new Noty({
    type: 'success',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :earning_added_successfully%>'
}).show();
