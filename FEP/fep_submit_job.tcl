lappend ::auto_path "/home/plunify/fep/tcl/lib"
package require fep 1.0

# Create a job list 
set joblist [list]

# -------------------------------------------------------------------------
# Arguments for runCloudCompile function
# 
# -project : Specify the project name
# -serverclass : Specify the type of server to use in the cloud, e.g. RA1 or RA2.  
# The full list can be found at https://cloud.plunify.com/faq#what_are_the_available_server_machine_types_for_each_cloud_region
#
# If the job is submitted successfully, a job ID will be returned. A new design run with the job ID included in the name will be created.
#
# -------------------------------------------------------------------------

# To choose a design run, make it active 
current_run impl_1

set jobid [fep::runCloudCompile -project "/home/plunify/project_1/project_1.xpr" -serverclass "RA1"]
if { ! [string is integer -strict "$jobid"] } {
    puts "Not a valid job ID, skipping."
} else {
	lappend joblist $jobid
}


# Copy and paste the above steps for each design run

current_run impl_2

set jobid [fep::runCloudCompile -project "/home/plunify/project_1/project_1.xpr" -serverclass "RA1"]
if { ! [string is integer -strict "$jobid"] } {
    puts "Not a valid job ID, skipping."
} else {
	lappend joblist $jobid
}


# Prints a list of Job IDs for download later
puts $joblist
