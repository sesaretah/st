$("#company_earnings_form").replaceWith("<%= escape_javascript(render(:partial => 'earnings/remote_form', locals: {company: @company, earning: @earning})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_earning%>'
}).show();
