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
      allow_forking: false,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: true,
      description: "JAD - Just Another Demonstrator, a fully-fledged dataspace",
      has_discussions: true,
    },
  ],
}
