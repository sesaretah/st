module ApplicationHelper
  def dropzone(klass, obj, attachment_attr)

  end

  def weight_scales
    @options = [
      [t(:gram), 1],
      [t(:kilogram) , 2],
      [t(:tonn) , 3],
      [t(:pond) , 4]
    ]
    return @options
  end

  def rweight_scales(w)
    @options = [t(:gram),t(:kilogram), t(:tonn), t(:pound)]
    return @options[w.to_i-1]
  end
end
