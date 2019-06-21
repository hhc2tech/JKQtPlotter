# source code for this simple demo
SOURCES =  ui.cpp \
           formwithjkqtplotter.cpp

FORMS +=   formwithjkqtplotter.ui

HEADERS += formwithjkqtplotter.h

# configure Qt
CONFIG += link_prl qt
QT += core gui xml svg
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

# output executable name
TARGET = ui

# include JKQTPlotter source headers and link against library
DEPENDPATH += ../../lib  ../../staticlib
INCLUDEPATH += ../../lib
CONFIG (debug, debug|release) {
    LIBS += -L../../qmake/staticlib/jkqtplotterlib/debug -ljkqtplotterlib_debug
} else {
    LIBS += -L../../qmake/staticlib/jkqtplotterlib/release -ljkqtplotterlib
}
message("LIBS = $$LIBS")

win32-msvc*: DEFINES += _USE_MATH_DEFINES
win32-msvc*: DEFINES += NOMINMAX



