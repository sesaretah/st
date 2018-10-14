$("#product_customers_list").replaceWith("<%= escape_javascript(render(:partial => 'products/customers_list', locals: {product: @product})) %>");
$("#product_customers_form").replaceWith("<%= escape_javascript(render(:partial => 'customers/remote_form', locals: {product: @product, customer: Customer.new})) %>");
new Noty({
    type: 'error',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :customer_destroyed_successfully%>'
}).show();
