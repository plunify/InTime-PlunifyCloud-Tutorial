<img src="images/Plunify_Cloud_InTime.png" /><h1>Tutorial: Optimize an FPGA Design using InTime on Plunify Cloud</h1>

(<a href="lang/日本語/README.md">日本語</a>)
(<a href="lang/中文/README.md">中文</a>)

## Introduction
This is a simple tutorial for the user to optimize an FPGA design with the InTime software, using the Plunify Cloud service. This tutorial covers the "Hot Start" recipe, "InTime Default" recipe, and the "Extra Opt Exploration" recipe. The recipe flow and their configurations are shown as below.<br>
If you are new to InTime, please [apply for a local evaluation](https://www.plunify.com/en/free-evaluation/) of the software for free.

**Recipe 1 : Hotstart**
  - runs per round  : 2
  - rounds          : 1
  - concurrent runs : 2
  
**Recipe 2 : InTime Default**
  - runs per round  : 2
  - rounds          : 1
  - concurrent runs : 2

**Recipe 3 : Extra Opt Exploration**
  - runs per round  : 2
  - rounds          : 1
  - concurrent runs : 2

## Requirements
1. InTime software version 2.6.8 or later
2. Vivado software version 2017.2 or later
3. Plunify Cloud account ([Register](https://cloud.plunify.com/register) a new account or refer a friend to get free credits.)

## Steps

1. Download or clone the sample project.

`https://github.com/plunify/InTime-PlunifyCloud-Tutorial.git`

2. Unzip the project/eight_bit_uc.xpr.zip file.

3. Start InTime and open the sample eight_bit_uc project.
<p align="left"><img src="images/open_project.png" /></p>

4. Select the targeted toolchain. For this tutorial, we will use Vivado version 2017.2.
<p align="left"><img src="images/select_toolchain.png" /></p>

5. Change the 'Run Target' option to 'Plunify Cloud'.
<p align="left"><img src="images/run_target_option.png" /></p>

6. Change 'Recipe' option to 'Hot Start' ('Hot Start' is the default recipe).
<p align="left"><img src="images/recipe_hotstart.png" /></p>

7. Configure the desired value for 'runs per round', 'rounds', 'concurrent runs' options as outlined in the Introduction section.
<p align="left"><img src="images/hotstart_settings.png" /></p>

8. Click 'Start Recipe' to submit the job to Plunify Cloud.
<p align="left"><img src="images/start_recipe_icon.png" /></p>

9. Enter your Plunify Cloud credentials. Note: you only need to do this once.
<p align="left"><img src="images/user_creditial.png" /></p>

10. Select the class of machine to use for cloud compilation. Use Class 1 machines for this tutorial.
<p align="left"><img src="images/select_class_machine.png" /></p>

11. After choosing the machine class, InTime will generate a job ID for this submission and upload the project into Plunify Cloud for the actual compilations. Notifications will be shown to confirm if the job submission is successful or not. Make a note of the job ID (81181 in this example). You can use this job ID to track the job status on the [Plunify Cloud web console](https://cloud.plunify.com/).
<p align="left"><img src="images/hotstart_job_submitted.png" /></p>

12. (Optional) On the Plunify Cloud web console, check the job status under 'History'>'Usage History'
<p align="left"><img src="images/hotstart_job_status_web.png" /></p>

13. Upon completion, a notification message will be sent to your registered email address.
<p align="left"><img src="images/hotstart_job_completed_email_notification.png" /></p>

14. Back to the InTime software, right-click the 'impl 1' parent revision and select **Job Action>Download Remote Results>Download Remote Results Without Project File** to download the results.
<p align="left"><img src="images/hotstart_download_results.png" /></p>

15. Change the 'Recipe' option to 'InTime Default'.

16. Right-click the revision with the best TNS and 'Set As Parent Revision'. In this example, both revisions "hotstart_1" and "hotstart_2" have the same result so it is okay to pick either one.
<p align="left"><img src="images/intime_default_set_parent_revision.png" /></p>

17. Repeat Steps 7 to Step 14 to run the 'InTime Default' recipe. 

18. Change the 'Recipe' option to 'Extra Opt Exploration'.

19. Right-click the revision with the best TNS and 'Set As Parent Revision'. In this example, the revision with the best TNS is "calibrate_1". **Note** the calibrate_1 revision already met timing but we will continue using it to complete this tutorial. To enable this, set the 'Stop When Goal Met' option to 'False' in order to continue running. 

20. Repeat Steps 7 to Step 14 for 'Extra Opt Exploration' recipe run. 

21. Upon completion, the InTime results should look like those below.
<p align="left"><img src="images/final_result.png" /></p>
