$("#company_exhibitions_list").replaceWith("<%= escape_javascript(render(:partial => 'companies/exhibitions_list', locals: {company: @company})) %>");
$("#company_participations_form").replaceWith("<%= escape_javascript(render(:partial => 'participations/remote_form', locals: {company: @company, participation: Participation.new})) %>");
new Noty({
    type: 'success',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :participation_updated_successfully%>'
}).show();
