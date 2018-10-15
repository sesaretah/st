$("#product_packaging_list").replaceWith("<%= escape_javascript(render(:partial => 'packagings/remote_form', locals: {product: @product, packaging: Packaging.new})) %>");
new Noty({
    type: 'error',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :packaging_destroyed_successfully%>'
}).show();
