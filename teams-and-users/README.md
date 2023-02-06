# To Run
=========================

1. Update the variables.tf with the correct `api_id` and `api_key`.
2. Run `terraform init` to initialise the repository
3. Run `terraform plan` and ensure that there is no errors
4. Run `terraform run` to deploy the charts and detetors.   
   

<br>

# Things to take note

### Key Point 1

Always destroy all the resources inside `escalation-policy` before destroying the rest of the resouces inside `teams-and-users`

---

### Key Point 2

In order to create new escalation policy, we need to manually perform the following

- need to manually retrieve the 
    - slug information 
    - team id

1. `slug information` will need to be extracted via the [API](https://portal.victorops.com/public/api-docs.html#!/Rotations/get_api_public_v1_teams_team_rotations)

2. `team id` can be retrieved via the [API](https://portal.victorops.com/public/api-docs.html#!/Teams/post_api_public_v1_team)


```yaml
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
```
---
### Key Point 3

To be able to completely destroy all the resources inside the `teams-and-users` folders, we will need to manually perform the following   

- need to manually insert replacement_user inside `terraform.tfstate` file if we want to remove the resource `victorops_team_membership`.

Default value is `null`

```yaml
{
      "mode": "managed",
      "type": "victorops_team_membership",
      "name": "dpatton_infra",
      "provider": "provider[\"registry.terraform.io/splunk/victorops\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "team-jxz46K6blsXeSoS9_dpatton",
            "replacement_user": "mcheng-splunk",
            "team_id": "team-jxz46K6blsXeSoS9",
            "user_name": "dpatton"
          },
          "sensitive_attributes": [],
          "private": "bnVsbA==",
          "dependencies": [
            "victorops_team.infrastructure",
            "victorops_user.dpatton"
          ]
        }
```
