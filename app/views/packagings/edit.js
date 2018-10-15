$("#product_packaging_list").replaceWith("<%= escape_javascript(render(:partial => 'packagings/remote_form', locals: {product: @product, packaging: @packaging})) %>");
new Noty({
    type: 'info',
    theme    : 'relax',
    timeout: 2000,
    layout: 'bottomLeft',
    text: '<%=t :you_can_now_edit_packaging%>'
}).show();
