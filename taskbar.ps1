$sa = new-object -c shell.application
$pn = $sa.namespace($env:windir).parsename('notepad.exe')
$pn.invokeverb('taskbarpin')