import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import QtMultimedia
import QtCharts



Window {

    width: 1960
    height: 1080
    visible: true
    title: qsTr("Model")

    RowLayout {
        id: rowlayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            width: 200
            height: 1080
            color: "#9feefc"

            Text {
                anchors { top: parent.top;topMargin: 20 }
                text: "   SELECT"
                color: "white"
                font { bold: true; pixelSize: 20; }
            }
        }


        Rectangle {
            width: 1760
            height: 1080
            color: "#c7f4fc"

            // plane 1
            Rectangle {
                id: recLeft
                width: 700
                height: 960
                anchors { top: parent.top; left: parent.left; topMargin: 30; leftMargin: 35 }
                color: "white"

                ColumnLayout {
                    id: colLeft
                    anchors.fill: parent
                    Text {
                        id: head1
                        anchors.top: parent.top
                        anchors.margins: 20
                        anchors.left: parent.left
                        text: "Agitation"
                        font { bold: true; pixelSize: 15; }
                    }

                    Text {
                        id: text1_1
                        anchors { top: head1.bottom; left: head1.left; margins: 20 }
                        text: "Status"
                    }
                    Switch {
                        id: toggleBtn
                        anchors { top: head1.bottom; right: colLeft.right; topMargin: 20 }
                        // anchors.right: recLeft.right
                        indicator: Rectangle {
                            width: 60
                            height: 30
                            radius: height / 2
                            color: toggleBtn.checked ? "#c7f4fc" : "white"
                            border.width: 2
                            border.color: "#E5E5E5"
                            Rectangle {
                                x: toggleBtn.checked ? parent.width - width - 2 : 1
                                width: toggleBtn.checked ? parent.height - 4 : parent.height - 2
                                height: width
                                radius: width / 2
                                anchors.verticalCenter: parent.verticalCenter
                                color: "white"
                                border.color: "#D5D5D5"
                                Behavior on x {
                                    NumberAnimation { duration: 200 }
                                }
                            }
                        }
                    }

                    Text {
                        id: text1_2
                        anchors { top: text1_1.bottom; left: head1.left; margins: 20 }
                        text: "Repititions Per Minute"
                    }
                    SpinBox {
                        anchors { top: text1_1.bottom; right: colLeft.right; margins: 20 }
                        value: 10
                    }

                    Text {
                        id: text1_3
                        anchors { top: text1_2.bottom; left: head1.left; margins: 20 }
                        text: "Volume"
                    }
                    SpinBox {
                        anchors { top: text1_2.bottom; right: colLeft.right; margins: 20 }
                        value: 20
                    }



                    Text {
                        id: head2
                        anchors { top: text1_3.bottom; topMargin: 30; left: parent.left; leftMargin: 20 }
                        text: "Dispensing"
                        font { bold: true; pixelSize: 15; }
                    }
                    Text {
                        id: text2_1
                        anchors { top: head2.bottom; left: head2.left; margins: 20 }
                        text: "Idle Shooting"
                    }
                    Switch {
                        id: toggleBtn2
                        anchors { top: head2.bottom; right: colLeft.right; topMargin: 20 }
                        indicator: Rectangle {
                            width: 60
                            height: 30
                            radius: height / 2
                            color: toggleBtn2.checked ? "#c7f4fc" : "white"
                            border.width: 2
                            border.color: "#E5E5E5"
                            Rectangle {
                                x: toggleBtn2.checked ? parent.width - width - 2 : 1
                                width: toggleBtn2.checked ? parent.height - 4 : parent.height - 2
                                height: width
                                radius: width / 2
                                anchors.verticalCenter: parent.verticalCenter
                                color: "white"
                                border.color: "#D5D5D5"
                                Behavior on x {
                                    NumberAnimation { duration: 200 }
                                }
                            }
                        }
                    }
                    Text {
                        id: text2_2
                        anchors { top: text2_1.bottom; left: head2.left; margins: 20 }
                        text: "Idle Shoots Per Minute"
                    }
                    SpinBox {
                        anchors { top: text2_1.bottom; right: colLeft.right; margins: 20 }
                        value: 0
                    }

                    Text {
                        id: head3
                        anchors { top: text2_2.bottom; topMargin: 30; left: parent.left; leftMargin: 20 }
                        text: "Dispensing"
                        font { bold: true; pixelSize: 15; }
                    }
                    Text {
                        id: text3_1
                        anchors { top: head3.bottom; left: head3.left; margins: 20 }
                        text: "Detection Radius(RoI)"
                    }
                    SpinBox {
                        anchors { top: head3.bottom; right: colLeft.right; margins: 20 }
                        value: 0
                    }
                    Text {
                        id: text3_2
                        anchors { top: text3_1.bottom; left: head3.left; margins: 20 }
                        text: "Detection Threshold(RoI)"
                    }
                    SpinBox {
                        anchors { top: text3_1.bottom; right: colLeft.right; margins: 20 }
                        value: 0
                    }


                    Text {
                        id: head4
                        anchors { top: text3_2.bottom; topMargin: 30; left: parent.left; leftMargin: 20 }
                        text: "SoftwareSettings"
                        font { bold: true; pixelSize: 15; }
                    }
                    Text {
                        id: text4_1
                        anchors { top: head4.bottom; left: head4.left; margins: 20 }
                        text: "Language"
                    }
                    ComboBox {
                        id: languageBox
                        anchors { top: head4.bottom; right: colLeft.right; margins: 20 }
                        model: ["", "English", "Chinese"]
                    }
                    Text {
                        id: text4_2
                        anchors { top: text4_1.bottom; left: head4.left; margins: 20 }
                        text: "SavePath"
                    }
                    Rectangle {
                        anchors { top: text4_1.bottom; left: text4_2.right; margins: 20 }
                        width: 450
                        height: text4_2.height*1.3
                        color: "white"
                        border.color: "lightGrey"
                        TextInput {
                            anchors.fill: parent
                        }
                    }
                    Rectangle {
                        width: languageBox.width
                        height: languageBox.height
                        anchors { top: text4_1.bottom; right: colLeft.right; margins: 20 }
                        Button {
                            anchors.fill: parent
                            text: "Browse"
                        }
                    }
                    Text {
                        id: text4_3
                        anchors { top: text4_2.bottom; left: head4.left; margins: 20 }
                        text: "freqeucy"
                    }
                    Slider {
                        id: freqeucySlider
                        width: 300
                        from: 1
                        value: 10
                        to: 100
                        anchors { top: text4_2.bottom; left: text4_3.right; margins: 20 }
                        Connections{
                            target: freqeucySpinBox
                            onValueChanged: freqeucySlider.value = freqeucySpinBox.value
                        }
                    }
                    SpinBox {
                        id: freqeucySpinBox
                        value: 10
                        anchors { top: text4_2.bottom; left: freqeucySlider.right; margins: 20 }
                        Connections{
                            target: freqeucySlider
                            onValueChanged: freqeucySpinBox.value = freqeucySlider.value
                        }
                    }
                    Text {
                        id: text4_4
                        anchors { top: text4_3.bottom; left: head4.left; margins: 20 }
                        text: "cycle"
                    }
                    Rectangle {
                        id: cycleRect
                        width: 450
                        height: text4_4.height
                        anchors { top: text4_3.bottom; left: text4_3.right; margins: 20 }
                        Slider {
                            id: cycleSlider
                            anchors.fill: parent
                            from: 1
                            value: 10
                            to: 100
                            Connections {
                                target: cycleSpinBox
                                onValueChanged: cycleSlider.value = cycleSpinBox.value
                            }
                        }
                    }
                    SpinBox {
                        id: cycleSpinBox
                        value: 10
                        anchors { top: text4_3.bottom; left: cycleRect.right; margins: 20 }
                        Connections{
                            target: cycleSlider
                            onValueChanged: cycleSpinBox.value = cycleSlider.value
                        }
                    }

                    Rectangle {
                        id: pieControl
                        width: 200
                        height: width
                        anchors { top: text4_4.bottom; right: cycleRect.right; margins: 40}
                        Canvas {
                            anchors.fill: parent

                            onPaint: {
                                var ctx = getContext('2d')
                                ctx.translate(pieControl.width/2, pieControl.width/2);
                                ctx.fillStyle = "lightGrey"
                                ctx.beginPath()
                                ctx.arc(0, 0, pieControl.width/2,0, 2*Math.PI, false);
                                ctx.fill()
                                ctx.stroke()

                                ctx.beginPath()
                                ctx.arc(0, 0, pieControl.width/4,0, 2*Math.PI, false);

                                ctx.moveTo(pieControl.width/8*Math.sqrt(2), pieControl.width/8*Math.sqrt(2))
                                ctx.lineTo(pieControl.width/4*Math.sqrt(2), pieControl.width/4*Math.sqrt(2))
                                ctx.moveTo(-pieControl.width/8*Math.sqrt(2), pieControl.width/8*Math.sqrt(2))
                                ctx.lineTo(-pieControl.width/4*Math.sqrt(2), pieControl.width/4*Math.sqrt(2))
                                ctx.moveTo(pieControl.width/8*Math.sqrt(2), -pieControl.width/8*Math.sqrt(2))
                                ctx.lineTo(pieControl.width/4*Math.sqrt(2), -pieControl.width/4*Math.sqrt(2))
                                ctx.moveTo(-pieControl.width/8*Math.sqrt(2), -pieControl.width/8*Math.sqrt(2))
                                ctx.lineTo(-pieControl.width/4*Math.sqrt(2), -pieControl.width/4*Math.sqrt(2))
                                ctx.stroke()

                                ctx.closePath();
                            }
                        }
                        SpinBox {
                            id: pieSpinBox
                            value: 10
                            anchors { top: pieControl.top; left: pieControl.left; topMargin: 90; leftMargin: 55 }
                        }




                    }

                }




                // plane 2
                Rectangle {
                    width: 700
                    height: 960
                    anchors { top: recLeft.top; left: recLeft.right; leftMargin: 30; }
                    color: "white"

                    ColumnLayout {
                        id: colRight
                        Text {
                            id: cameraTitle
                            anchors { top: colRight.top; left: colRight.left; margins: 40 }
                            text: "Camera"
                        }
                        Rectangle {
                            id: cameraRect
                            anchors { top: cameraTitle.top; left: colRight.left; topMargin: 40; leftMargin: 50 }
                            width: 600
                            height: 360
                            Camera {
                                id: camera
                                active: true
                            }
                            CaptureSession {
                                camera: camera
                                videoOutput: output
                            }
                            VideoOutput {
                                id: output
                                anchors.fill: parent
                            }
                        }
                        ComboBox {
                            id: cameraBox
                            anchors { top: cameraRect.bottom; left: cameraRect.left; topMargin: 20 }
                            model: [""]
                        }
                        Rectangle {
                            id: showROIBox
                            width: cameraBox.width
                            height: cameraBox.height
                            anchors { top: cameraRect.bottom; left: cameraBox.right; topMargin: 20; leftMargin: 20 }
                            Button {
                                anchors.fill: parent
                                text: "Show ROI"
                            }
                        }
                        Rectangle {
                            id: overlayBox
                            width: cameraBox.width
                            height: cameraBox.height
                            anchors { top: cameraRect.bottom; left: showROIBox.right; topMargin: 20; leftMargin: 20 }
                            Button {
                                anchors.fill: parent
                                text: "Overlay"
                            }
                        }
                        Rectangle {
                            id: autoROIBox
                            width: cameraBox.width
                            height: cameraBox.height
                            anchors { top: cameraRect.bottom; left: overlayBox.right; topMargin: 20; leftMargin: 20 }
                            Button {
                                anchors.fill: parent
                                text: "Auto ROI"
                            }
                        }

                        Text {
                            id: resultTitle
                            anchors { top: cameraBox.bottom; left: colRight.left; margins: 40 }
                            text: "Result"
                        }

                        Rectangle {
                            id: chartRect
                            width: 400
                            height: 250
                            border.color: "lightGrey"
                            anchors { top: resultTitle.top; left: colRight.left; topMargin: 40; leftMargin: 150 }
                            ChartView {
                                title: "Line Chart"
                                anchors.fill: parent
                                antialiasing: true

                                LineSeries {
                                    name: "Line"
                                    XYPoint { x: 0; y: 0 }
                                    XYPoint { x: 1.1; y: 2.1 }
                                    XYPoint { x: 1.9; y: 3.3 }
                                    XYPoint { x: 2.1; y: 2.1 }
                                    XYPoint { x: 2.9; y: 4.9 }
                                    XYPoint { x: 3.4; y: 3.0 }
                                    XYPoint { x: 4.1; y: 3.3 }
                                }
                            }
                        }

                    }
                }
            }
        }

    }
}
