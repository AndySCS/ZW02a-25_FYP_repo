#Get Main Folder Path
set workingpath = $cwd

while(1)
	if(-d "rtl" && -d "script" && -d "verification") then
		break
	endif
	cd ../
	if($cwd:t == "") then
		cd $workingpath
		echo "[Error] Cannot find the main folder path!"
		break
	endif
end

#Set Env Variable
setenv MINITPU_FOLDER $cwd
setenv MINITPU_SCRIPT $MINITPU_FOLDER/script
setenv MINITPU_RTL    $MINITPU_FOLDER/rtl
setenv MINITPU_COV    $MINITPU_FOLDER/verification/cov
setenv MINITPU_SVA    $MINITPU_FOLDER/verification/sva
setenv MINITPU_VER 	  $MINITPU_FOLDER/verification
cd $workingpath

echo "[MINITPU_FOLDER] $MINITPU_FOLDER"
echo "[MINITPU_SCRIPT] $MINITPU_SCRIPT"
echo "[MINITPU_RTL   ] $MINITPU_RTL"
echo "[MINITPU_COV   ] $MINITPU_COV"
echo "[MINITPU_SVA   ] $MINITPU_SVA"
echo "[MINITPU_VERIFY] $MINITPU_VER"

#UVM Path
setenv VCS_UVM_HOME /dfs/app/synopsys/vcs-vt2022.06-sp1-1/etc/uvm-1.2/src

#VCS setup
source /usr/eelocal/synopsys/vcs-vt2022.06-sp1-1/.cshrc
#Verdi setup
source /usr/eelocal/synopsys/verdi-vv2023.12/.cshrc 
#Vivaod Setup
source /usr/eelocal/xilinx/Vitis/2023.1/.cshrc

# Alias
alias prj_script_dir 'cd $MINITPU_SCRIPT'
alias prj_script 'source $MINITPU_SCRIPT/project.cshrc'
alias prj_top 'cd $MINITPU_VER/toptest'
alias prj_rtl 'cd $MINITPU_RTL'
alias prj_cov 'cd $MINITPU_COV'
alias prj_sva 'cd $MINITPU_SVA'
alias gcommit 'perl $MINITPU_FOLDER/script/git_commit.pl'

#Set up local tool
source $MINITPU_FOLDER/script/set_local_bin.cshrc
