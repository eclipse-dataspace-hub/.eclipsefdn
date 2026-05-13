local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.dataspace-hub', 'eclipse-dataspace-hub') {
  settings+: {
    name: "Eclipse Dataspace Hub project",
  },
  _repositories+:: [
    orgs.newRepo('minimumviabledataspace') {
      description: "MVD is a very minimal dataspace consisting of two participants, each running their infrastructure separately.",
      has_issues: true,
      has_wiki: true,
      has_discussions: true,
      allow_forking: true,
      allow_squash_merge: true,
      allow_auto_merge: true,
      allow_update_branch: true,
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: true,
      dependabot_security_updates_enabled: true,
      secret_scanning: "enabled",
    },
    orgs.newRepo('jad') {
      description: "JAD is a fully-fledged SaaS-capable dataspace leveraging the full spectrum of dataspace technologies",
      visibility: "public",
      has_issues: true,
      has_wiki: true,
      has_discussions: true,
      allow_forking: true,
      allow_squash_merge: true,
      allow_auto_merge: true,
      allow_update_branch: true,
      delete_branch_on_merge: true,
      dependabot_alerts_enabled: true,
      dependabot_security_updates_enabled: true,
      secret_scanning: "enabled",
    },
  ],
}
