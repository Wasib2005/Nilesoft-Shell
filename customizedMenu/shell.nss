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
menu( title="Power" image=\uE12F)
	{
	item(title="Lock" image=\uE023 cmd='C:\Program Files\Nilesoft Shell\imports\Power\lock.exe.lnk')
	item(title="Sleep" image=\uE11C cmd='C:\Program Files\Nilesoft Shell\imports\Power\sleep.exe.lnk')
	item(title="Shutdown" image=\uE12F cmd='C:\Program Files\Nilesoft Shell\imports\Power\shutdown.exe.lnk')
	item(title="Restart" image=\uE1A9 cmd='C:\Program Files\Nilesoft Shell\imports\Power\restart.exe.lnk')

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
