$("#product_packaging_form").replaceWith("<%= escape_javascript(render(:partial => 'products/packaging_list', locals: {product: @product, packaging: @packaging})) %>");
new Noty({
    type: 'success',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :packaging_added_successfully%>'
}).show();
