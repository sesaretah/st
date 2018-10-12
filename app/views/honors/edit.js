$("#company_honors_form").replaceWith("<%= escape_javascript(render(:partial => 'honors/remote_form', locals: {company: @company, honor: @honor})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_honor%>'
}).show();
