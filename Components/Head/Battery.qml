import Tools


TimerText {
    timeStep: 1000 * 60 * 2  // every 2mins
    textProperty: "%1%".arg(device.charge)
}