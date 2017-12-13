module ApplicationHelper

  def after_sign_out_path_for(current_user)
    scope = Devise::Mapping.find_scope!(current_user)
    router_name = Devise.mappings[scope].router_name
    context = router_name ? send(router_name) : self
    context.respond_to?(:root_path) ? context.root_path : "/"
  end
end
