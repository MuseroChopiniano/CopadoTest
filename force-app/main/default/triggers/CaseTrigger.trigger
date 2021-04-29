trigger CaseTrigger on Case (before insert) {
    //TODO: call handler!
    system.debug(system.logginglevel.DEBUG,'something to debug');
}