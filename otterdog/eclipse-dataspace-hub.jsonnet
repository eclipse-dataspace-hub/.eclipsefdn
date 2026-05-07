local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.dataspace-hub', 'eclipse-dataspace-hub') {
  settings+: {
    name: "Eclipse Dataspace Hub project",
  },
}
