/*

  **MainWindowController.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

import Qlift

class MainWindowController: QMainWindow {
    var centralwidget: QWidget!
    var verticalLayout: QVBoxLayout!
    var horizontalLayout: QHBoxLayout!
    var horizontalSpacerLeft: QSpacerItem!
    var aliceKitLabels: QLabel!
    var horizontalSpacerRight: QSpacerItem!
    var menubar: QMenuBar!
    var menuFile: QMenu!
    var actionNewGame: QAction!
    var actionExit: QAction!

    init() {
        super.init()
        actionExit = QAction(parent: self)
        actionExit.text = "&Exit"
        self.geometry = QRect(x: 0, y: 0, width: 640, height: 480)
        self.windowTitle = "AliceKit Demo"
        centralwidget = QWidget(parent: self)
        verticalLayout = QVBoxLayout(parent: centralwidget)
        horizontalLayout = QHBoxLayout(parent: nil)
        horizontalSpacerLeft = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerLeft)
        aliceKitLabels = QLabel(parent: centralwidget)
        aliceKitLabels.text = "Congratulations!\nYour AliceKit app is successfully up and running!"
        horizontalLayout.add(widget: aliceKitLabels)
        horizontalSpacerRight = QSpacerItem(width: 40, height: 20, horizontalPolicy: .Expanding, verticalPolicy: .Minimum)
        horizontalLayout.add(item: horizontalSpacerRight)
        verticalLayout.add(layout: horizontalLayout)
        self.centralWidget = centralwidget
        menubar = QMenuBar(parent: self)
        menubar.geometry = QRect(x: 0, y: 0, width: 205, height: 30)
        menuFile = QMenu(parent: menubar)
        menuFile.title = "&File"
        menuFile.add(action: actionExit)
        menubar.add(action: menuFile.menuAction())
        self.menuBar = menubar
    }
}
