resource "victorops_team" "infrastructure" {
  name = "Infrastructure"
}


output "team_id" {
  value = victorops_team.infrastructure
}