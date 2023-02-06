resource "victorops_user" "sparry" {
  first_name       = "Stacy"
  last_name        = "Parry"
  user_name        = "sparry"
  email            = "SParry@victorops.com"
  is_admin         = false                                           // depreacted and ignored. Cannot create admin users anymore.
  replacement_user = "mcheng-splunk" // optional field
}

resource "victorops_user" "dpatton" {
  first_name       = "Dominika"
  last_name        = "Patton"
  user_name        = "dpatton"
  email            = "DPatton@victorops.com"
  is_admin         = false                                           // depreacted and ignored. Cannot create admin users anymore.
  replacement_user = "mcheng-splunk" // optional field
}


# resource "victorops_user" "victorops_default_user" {
#   first_name       = "default"
#   last_name        = "user"
#   user_name        = "dadmin"
#   email            = "default_user@victorops.com"
#   is_admin         = false // depreacted and ignored. Cannot create admin users anymore.
#   replacement_user = "mcheng-splunk"
# }
