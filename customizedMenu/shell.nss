menu(type='desktop|taskbar' title='Shortcut' image = \uE013)
{
	menu(title='Applications' image=\uE253)
	{
		item(title='Command prompt' image cmd='cmd.exe')
		item(title='PowerShell' image cmd='powershell.exe')
		item(title='Registry editor' image cmd='regedit.exe')
		separator
		item(title='Paint' image cmd='mspaint.exe')
		item(title='Notepad' image cmd='notepad.exe')
	}
	separator
	menu(title='Directories' image=\uE08B)
	{
		item(title='Downloads' cmd=user.downloads)
		item(title='Pictures' cmd=user.pictures)
		item(title='Home' cmd=user.directory)
		separator
		item(title='Windows' cmd=sys.directory)
		item(title='Program files' cmd=sys.prog())
	}
}

settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
	
}



import 'imports/theme.nss'
import 'imports/images.nss'

import 'imports/modify.nss'

menu(mode="multiple" title="Pin/Unpin" image=icon.pin)
{
}

menu(mode="multiple" title=title.more_options image=icon.more_options)
{
}


import 'imports/terminal.nss'
import 'imports/file-manage.nss'
import 'imports/develop.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'
