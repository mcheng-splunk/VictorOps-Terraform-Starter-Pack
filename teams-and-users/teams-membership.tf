
resource "victorops_team_membership" "sparry_infra" {
  team_id          = victorops_team.infrastructure.id
  user_name        = victorops_user.sparry.user_name
  # replacement_user = "mcheng-splunk" // optional field
}


resource "victorops_team_membership" "dpatton_infra" {
  team_id          = victorops_team.infrastructure.id
  user_name        = victorops_user.dpatton.user_name
  # replacement_user = "mcheng-splunk" // optional field
}

