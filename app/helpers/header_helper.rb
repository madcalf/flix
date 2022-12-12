# Didn't think this made sense in the movies controller cuz it's not
# specific to the movie links. Not sure if this is good practice to
# just make a separate helper module for this or should I just put the
# helper in the application_helper?

module HeaderHelper
  def nav_link_to(label, url)
    return link_to(label, url, class: 'active') if current_page?(url)

    link_to(label, url)
  end
end
