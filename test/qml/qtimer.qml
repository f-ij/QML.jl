import QtQuick
import org.julialang

Item {

  Connections {
    target: timer
    function onTimeout() { Julia.counter_slot() }
  }

  // Timer to quit the program, has nothing to do with the QTimer which counts much faster
  Timer {
    interval: 200; running: true; repeat: false
    onTriggered: Qt.quit()
  }

  // Start timer at startup
  Component.onCompleted: {
    timer.start()
  }
}
