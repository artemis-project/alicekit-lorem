/*

  **Main.swift**
  AliceKit Demo
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Qlift


class MainWindow: MainWindowController {
    override init() {
        super.init()
    }
}

func main() -> Int32 {
  print("Running AliceKit and looking for Qt...")
    let application = QApplication()
    let mainWindow = MainWindow()
    print("Qt found and running. Turning on Swift Machine...")
    mainWindow.show()
    print("Done. Presenting content...")
    return application.exec()
    print("Ready for action.")
}

exit(main())
print("Turning off Swift Machine and cleaning up any leftover ink...")
print("Done.")
