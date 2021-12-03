QT       += core gui concurrent

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

CONFIG += skip_target_version_ext

QMAKE_TARGET_COPYRIGHT = "Copyright 2021 Shen zhen zhong bai yuan"

VERSION = 1.0.0.1

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    datainterchangeinterface.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RC_ICONS=ICO.ico

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../LogController/release/ -lCc1_Logging
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../LogController/debug/ -lCc1_Loggingd

INCLUDEPATH += $$PWD/../LogController
DEPENDPATH += $$PWD/../LogController

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../DataInterSerailPort/release/ -lCc1_SerialPort
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../DataInterSerailPort/debug/ -lCc1_SerialPort
else:unix: LIBS += -L$$OUT_PWD/../DataInterSerailPort/ -lCc1_SerialPort

INCLUDEPATH += $$PWD/../DataInterSerailPort
DEPENDPATH += $$PWD/../DataInterSerailPort
