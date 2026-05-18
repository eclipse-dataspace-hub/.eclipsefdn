local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.dataspace-hub', 'eclipse-dataspace-hub') {
  settings+: {
    description: "",
    name: "Eclipse Dataspace Hub project",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.extendRepo('.eclipsefdn') {
      gh_pages_build_type: "disabled",
    },
    orgs.newRepo('MinimumViableDataspace') {
      allow_rebase_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Guidance on documentation, scripts and integration steps on using the EDC project results",
      has_discussions: true,
      squash_merge_commit_title: "PR_TITLE",
      secrets: [
        orgs.newRepoSecret('ACR_NAME') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('APP_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('APP_OBJECT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_CLIENT_SECRET') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_SUBSCRIPTION_ID') {
          value: "********",
        },
        orgs.newRepoSecret('ARM_TENANT_ID') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP') {
          value: "********",
        },
        orgs.newRepoSecret('COMMON_RESOURCE_GROUP_LOCATION') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_SHARE') {
          value: "********",
        },
        orgs.newRepoSecret('REGISTRY_STORAGE_ACCOUNT') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_CONTAINER') {
          value: "********",
        },
        orgs.newRepoSecret('TERRAFORM_STATE_STORAGE_ACCOUNT') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
  ],
}
