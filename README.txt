Custom Kernel Header Post-install Fix Link Script 
自訂作業系統核心標頭檔軟體包裹安裝後symbolic式連結修復script程式
--------------------------------------------------------------------
Software Developer | 軟體開發者
	Ｖ字龍 | Vdragon
	
Software Usage | 軟體用途
	The script fix the following condition:
	When installing a custom kernel package, a message printed as following:

	Hmm......link...not found...
	(I'll find the complete error message later)

	And the (third party) kernel modules can't be built because the symbolic link /lib/modules/「custom kernel version」/build doesn't pointed to /usr/src/「custom kernel version」 or missing.

	The script provided here currently replace the missing or errornous symbolic link with a correct one.

How to Use | 如何使用
	1.Boot the operating system using the custom kernel with its version you want to fix
	2.Download (or clone) the script
	3.Make sure if the script file "Fix_link.sh" has "executable(x)" attribute triggered
	4.Run the script under the terminal emulator like GNOME terminal, Konsole, or TTY1~6 (probably with administrative rights, or add "sudo" to the start of the command)
		Example | 範例
			sudo Executables/Fix_link.sh
			sudo ./Fix_link.sh
	5.Rebuild the (third party) kernel modules if needed
	
	In fact if you know a few about bash script you may fix the link manually in all conditions.
	