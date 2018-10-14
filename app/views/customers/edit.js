$("#product_customers_form").replaceWith("<%= escape_javascript(render(:partial => 'customers/remote_form', locals: {product: @product, customer: @customer})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_customer%>'
}).show();
