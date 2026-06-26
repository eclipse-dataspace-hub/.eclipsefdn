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
      description: "Minimum Viable Dataspace, consisting of two participants and their resources",
      has_discussions: true,
      squash_merge_commit_title: "PR_TITLE",
      environments: [
        orgs.newEnvironment('copilot'),
      ],
    },
    orgs.newRepo('jad') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: true,
      description: "JAD - Just Another Demonstrator, a fully-fledged dataspace",
      has_discussions: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",
    },
    orgs.newRepo('redline') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: true,
      description: "Redline - JADs backend for tenant/participant management with CFM",
      has_discussions: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",
    },
    orgs.newRepo('jad-ui') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: true,
      description: "UI for JAD - Unified UI with roles for CSP/MSP/Operator and Participants (Users of the managed service)",
      has_discussions: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",
    },
    orgs.newRepo('file-sharing-app') {
      allow_forking: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: true,
      description: "File sharing App - Use-case app for file sharing using dataplane SDK",
      has_discussions: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}