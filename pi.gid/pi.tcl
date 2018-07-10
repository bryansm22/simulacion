proc InitGIDProject {dir} {
	Proyecto::SetDir $dir
	Proyecto::CreateWindow
}

namespace eval Proyecto {
	variable problemtype_dir
}

proc Proyecto::SetDir { dir } {
	variable problemtype_dir
	set problemtype_dir $dir
}

proc Proyecto::getDir { dir } {
	variable problemtype_dir
	return $problemtype_dir
}

proc Proyecto::CreateWindow { } {
	if { [GidUtils::AreWindowsDisabled] } {
		return
	}  
	set w .gid.win_example
	InitWindow $w [= "ROMBOS.TCL"] Proyecto "" "" 1
	if { ![winfo exists $w] } return ;# windows disabled || usemorewindows == 0

	ttk::frame $w.top
	ttk::label $w.top.title_text -text [= "Problem type Rombos"]

	ttk::frame $w.bottom
	ttk::button $w.bottom.start -text [= "Continue"] -command "destroy $w"

	grid $w.top.title_text -sticky ew
	grid $w.top -sticky new

	grid $w.bottom.start -padx 6
	grid $w.bottom -sticky sew -padx 6 -pady 6
}
