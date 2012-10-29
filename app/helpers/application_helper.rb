module ApplicationHelper
# Creates a submit button with the given name with a cancel link
# Accepts two arguments: Form object and the cancel link name
def submit_or_cancel(form, name='Cancel')
form.submit + " or " +
link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
end
#
def hidden_div_if(condition, attributes = {}, &block)
  	if condition
  	attributes["style"] = "display: none"
  	end
  	content_tag("div", attributes, &block)
  	end
end
