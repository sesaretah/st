$("#product_faqs_list").replaceWith("<%= escape_javascript(render(:partial => 'products/faqs_list', locals: {product: @product})) %>");
$("#product_faqs_form").replaceWith("<%= escape_javascript(render(:partial => 'faqs/remote_form', locals: {product: @product, faq: @faq})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_faq%>'
}).show();
