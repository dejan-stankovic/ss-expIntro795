Menu = 0
Cmd = 1
Accelerator = 1
Key = 2

NotSticky = 0
Sticky = 1

Bindings("Application").AddKeyBinding "Ctrl+A", "EditRedo", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+B", "EditAttributeVisibility", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Insert", "EditCopy", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+C", "EditCopy", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Alt+G", "ProjectSettings", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+N", "FileNew", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+O", "FileOpen", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+P", "FilePrint", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+S", "FileSave", Menu, Accelerator
Bindings("Application").AddKeyBinding "Shift+Insert", "EditPaste", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+V", "EditPaste", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Delete", "EditDelete", Menu, Accelerator
Bindings("Application").AddKeyBinding "F1", "Help", Menu, Accelerator
Bindings("Application").AddKeyBinding "Shift+F1", "HelpContext", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+F1", "HelpDxDesignerHelpTopics", Menu, Accelerator
Bindings("Application").AddKeyBinding "Shift+Delete", "EditCut", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+X", "EditCut", Menu, Accelerator
Bindings("Application").AddKeyBinding "Alt+Backspace", "EditUndo", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Backspace", "EditRedo", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Z", "EditUndo", Menu, Accelerator
Bindings("Application").AddKeyBinding "Alt+Enter", "WVOProperties", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Q", "WVOProperties", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Alt+Space", "AddOffPagePin", Menu, Accelerator
Bindings("Application").AddKeyBinding "Ctrl+Alt+Shift+Space", "AddOnPagePin", Menu, Accelerator

Bindings("Schematic").AddKeyBinding "F2", "WVOLeftButton", Menu, Key
Bindings("Symbol").AddKeyBinding "F2", "WVOLeftButton", Menu, Key
Bindings("Schematic").AddKeyBinding "Ctrl+F2", "WVOLeftButton", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+F2", "WVOLeftButton", Menu, Key
Bindings("Schematic").AddKeyBinding "Shift+F2", "WVOLeftButton", Menu, Key
Bindings("Symbol").AddKeyBinding "Shift+F2", "WVOLeftButton", Menu, Key
Bindings("Schematic").AddKeyBinding "Ctrl+Shift+F2", "WVOLeftButton", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+Shift+F2", "WVOLeftButton", Menu, Key

Bindings("Schematic").AddKeyBinding "F3", "WVOMiddleButton", Menu, Key
Bindings("Symbol").AddKeyBinding "F3", "WVOMiddleButton", Menu, Key

Bindings("Schematic").AddKeyBinding "F4", "WVOZoomFull", Menu, Key
Bindings("Symbol").AddKeyBinding "F4", "WVOZoomFull", Menu, Key
Bindings("Schematic").AddKeyBinding "Home", "WVOZoomFull", Menu, Key
Bindings("Symbol").AddKeyBinding "Home", "WVOZoomFull", Menu, Key

Bindings("Schematic").AddKeyBinding "F5", "ViewRefresh", Menu, Key
Bindings("Symbol").AddKeyBinding "F5", "ViewRefresh", Menu, Key

Bindings("Schematic").AddKeyBinding "F6", "WVOPan", Menu, Key
Bindings("Symbol").AddKeyBinding "F6", "WVOPan", Menu, Key

Bindings("Schematic").AddKeyBinding "F7", "WVOZoomIn", Menu, Key
Bindings("Symbol").AddKeyBinding "F7", "WVOZoomIn", Menu, Key

Bindings("Schematic").AddKeyBinding "F8", "WVOZoomOut", Menu, Key
Bindings("Symbol").AddKeyBinding "F8", "WVOZoomOut", Menu, Key

Bindings("Schematic").AddKeyBinding "F9", "WVOZoomArea", Menu, Key
Bindings("Symbol").AddKeyBinding "F9", "WVOZoomArea", Menu, Key
Bindings("Schematic").AddKeyBinding "Ctrl+W", "WVOZoomArea", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+W", "WVOZoomArea", Menu, Key

Bindings("Schematic").AddKeyBinding "Shift+F9", "ViewSaveZoom", Menu, Key
Bindings("Symbol").AddKeyBinding "Shift+F9", "ViewSaveZoom", Menu, Key
Bindings("Schematic").AddKeyBinding "Shift+F10", "ViewRestoreZoom", Menu, Key
Bindings("Symbol").AddKeyBinding "Shift+F10", "ViewRestoreZoom", Menu, Key

Bindings("Schematic").AddKeyBinding "Up", "WVOUp", Menu, Key
Bindings("Symbol").AddKeyBinding "Up", "WVOUp", Menu, Key

Bindings("Schematic").AddKeyBinding "Down", "WVODown", Menu, Key
Bindings("Symbol").AddKeyBinding "Down", "WVODown", Menu, Key

Bindings("Schematic").AddKeyBinding "Left", "WVOLeft", Menu, Key
Bindings("Symbol").AddKeyBinding "Left", "WVOLeft", Menu, Key

Bindings("Schematic").AddKeyBinding "Right", "WVORight", Menu, Key
Bindings("Symbol").AddKeyBinding "Right", "WVORight", Menu, Key

Bindings("Schematic").AddKeyBinding "Page Down", "WVONextPage", Menu, Key
Bindings("Symbol").AddKeyBinding "Page Down", "WVONextPage", Menu, Key

Bindings("Schematic").AddKeyBinding "Page Up", "WVOPriorPage", Menu, Key
Bindings("Symbol").AddKeyBinding "Page Up", "WVOPriorPage", Menu, Key

Bindings("Schematic").AddKeyBinding "Space", "WVOCommandLine", Menu, Key
Bindings("Symbol").AddKeyBinding "Space", "WVOCommandLine", Menu, Key

Bindings("Schematic").AddKeyBinding "Backspace", "WVODelete", Menu, Key
Bindings("Symbol").AddKeyBinding "Backspace", "WVODelete", Menu, Key
Bindings("Schematic").AddKeyBinding "Delete", "WVODelete", Menu, Key
Bindings("Symbol").AddKeyBinding "Delete", "WVODelete", Menu, Key

Bindings("Schematic").AddKeyBinding "A", "AddArc", Menu, Key, Sticky
Bindings("Symbol").AddKeyBinding "A", "AddArc", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "b", "AddBus", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "B", "AddBox", Menu, Key, Sticky
Bindings("Symbol").AddKeyBinding "B", "AddBox", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "c", "AddComponent", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "C", "AddCircle", Menu, Key, Sticky
Bindings("Symbol").AddKeyBinding "C", "AddCircle", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "d", "EditDelete", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "d", "EditDelete", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "Ctrl+D", "ViewRefresh", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+D", "ViewRefresh", Menu, Key

Bindings("Schematic").AddKeyBinding "Ctrl+E", "MoveNow", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+E", "MoveNow", Menu, Key

Bindings("Schematic").AddKeyBinding "f", "AddFub", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "Ctrl+F", "ReflectHorizontal", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+F", "ReflectHorizontal", Menu, Key

Bindings("Schematic").AddKeyBinding "Ctrl+Shift+F", "ReflectVertical", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+Shift+F", "ReflectVertical", Menu, Key

Bindings("Schematic").AddKeyBinding "i", "AddComponent", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "L", "AddLine", Menu, Key, Sticky
Bindings("Symbol").AddKeyBinding "L", "AddLine", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "m", "MoveNow", Menu, Key
Bindings("Symbol").AddKeyBinding "m", "MoveNow", Menu, Key

Bindings("Schematic").AddKeyBinding "n", "AddNet", Menu, Key, Sticky

Bindings("Symbol").AddKeyBinding "p", "AddPin", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "r", "EditRedo", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "r", "EditRedo", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "Ctrl+R", "ReattachNet", Menu, Key

Bindings("Schematic").AddKeyBinding "Ctrl+Shift+R", "Rotate90", Menu, Key
Bindings("Symbol").AddKeyBinding "Ctrl+Shift+R", "Rotate90", Menu, Key

Bindings("Schematic").AddKeyBinding "s", "SelectMode", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "s", "SelectMode", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "T", "AddText", Menu, Key, Sticky
Bindings("Symbol").AddKeyBinding "T", "AddText", Menu, Key, Sticky

Bindings("Schematic").AddKeyBinding "u", "EditUndo", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "u", "EditUndo", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "w", "FileSaveAndCheck", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "w", "FileSave", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "W", "FileSaveAs", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "W", "FileSaveAs", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "h", "WVOPushSchematic", Menu, Key, NotSticky
Bindings("Schematic").AddKeyBinding "y", "WVOPushSymbol", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "Ctrl+Y", "Cycle", Cmd, Key
Bindings("Schematic").AddKeyBinding "Ctrl+Tab", "Cycle", Cmd, Key

Bindings("Schematic").AddKeyBinding "z", "ViewZoom", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "z", "ViewZoom", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "Z", "ViewZoomSelected", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "Z", "ViewZoomSelected", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "End", "ViewRefresh", Menu, Key
Bindings("Symbol").AddKeyBinding "End", "ViewRefresh", Menu, Key

Bindings("Schematic").AddKeyBinding "Escape", "SelectMode", Menu, Key, NotSticky
Bindings("Symbol").AddKeyBinding "Escape", "SelectMode", Menu, Key, NotSticky

Bindings("Schematic").AddKeyBinding "Insert", "WVOPan", Menu, Key
Bindings("Symbol").AddKeyBinding "Insert", "WVOPan", Menu, Key

Bindings("Schematic").AddKeyBinding "Ctrl+Space", "AddGroundPin", Menu, Key
Bindings("Schematic").AddKeyBinding "Shift+Space", "AddPowerPin", Menu, Key
Bindings("Schematic").AddKeyBinding "Ctrl+Shift+Space", "AddHierIOPin", Menu, Key

Bindings("Stroke").AddStroke "753", "WVOZoomOut"
Bindings("Stroke").AddStroke "357", "WVOZoomIn"
Bindings("Stroke").AddStroke "74123", "ViewRefresh"
Bindings("Stroke").AddStroke "74123698", "WVODelete"
Bindings("Stroke").AddStroke "741236987", "WVODelete"
Bindings("Stroke").AddStroke "951", "WVOZoomFull"
Bindings("Stroke").AddStroke "123658", "HelpViewDrawHelpContents"
Bindings("Stroke").AddStroke "12368", "HelpViewDrawHelpContents"
Bindings("Stroke").AddStroke "7412369", "EditUndo"
Bindings("Stroke").AddStroke "852", "AddLine"
Bindings("Stroke").AddStroke "3698741", "Rotate90"
Bindings("Stroke").AddStroke "9632147", "ReflectHorizontal"
Bindings("Stroke").AddStroke "12369", "WVOLastCommand"

