lappend ::auto_path "<FEP_installation path>/tcl/lib"
package require fep 1.0

# Run runCloudDownload function for each job ID
fep::runCloudDownload -jobid 123456 

#fep::runCloudDownload -jobid 82495 
#fep::runCloudDownload -jobid 82496
