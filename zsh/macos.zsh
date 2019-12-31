# Mainly shortcuts to log helpers

mdmlogs() {
  log stream --info --debug --predicate 'processImagePath contains "mdmclient" OR processImagePath contains "storedownloadd"'
}

mdmconfigs() {
  log stream --info --debug --predicate 'subsystem contains "com.apple.ManagedClient.cloudconfigurationd"'
}
