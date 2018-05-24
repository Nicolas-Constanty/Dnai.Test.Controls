TEMPLATE = subdirs

CONFIG += object_parallel_to_source

SUBDIRS = app libControl libFontAwesome

message("Master pro file path : ["$${PROJECT_ROOT_DIRECTORY}"]")

app.file = app/app.pro
libControl.file = lib/lcontrols/lcontrols.pro
libFontAwesome.file = lib/lfontawesome/lfontawesome.pro

libControl.depends = libFontAwesome
app.depends = libControl
