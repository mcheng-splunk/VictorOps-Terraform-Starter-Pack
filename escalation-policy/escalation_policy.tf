resource "victorops_escalation_policy" "infra_high_severity" {
  name    = "High Severity"
  team_id = "team-dPRrVfe7Y0TdsElR"
  step {
    timeout = 0
    entries = [
      {
        type = "rotationGroup"
        slug = "rtg-esWh7aMxmrCiz4KR"
      }
    ]
  }
}

# resource "victorops_escalation_policy" "deloit-cloud" {
# name    = "Deloit-Cloud"
# team_id = victorops_team.Deloit-Cloud.id
# step {
#   timeout = 0
#   entries = [
#     {
#       type = "rotationGroup"
#       slug = "rtg-9cHrnuMnSvlkCjkL"
#     }
#   ]
# }
# step {
#   timeout = 15
#   entries = [
#     {
#       type = "rotationGroupNext"
#       slug = "rtg-9cHrnuMnSvlkCjkL"
#     }
#   ]
# }
# step {
#   timeout = 15
#   entries = [
#     {
#       type = "targetPolicy"
#       slug = victorops_escalation_policy.deloit-cloud-escalation.id
#     }
#   ]
# }
# }