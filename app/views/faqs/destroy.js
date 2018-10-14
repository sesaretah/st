$("#product_faqs_list").replaceWith("<%= escape_javascript(render(:partial => 'products/faqs_list', locals: {product: @product})) %>");
$("#product_faqs_form").replaceWith("<%= escape_javascript(render(:partial => 'faqs/remote_form', locals: {product: @product, faq: Faq.new})) %>");
new Noty({
    type: 'error',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :faq_destroyed_successfully%>'
}).show();
