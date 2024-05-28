---
title: 'Workflow of a CCSM4 run'
summary: Step by step guide to start a new CCSM4 simulation
authors:
- admin
tags:
- CCSM4
- POP2
- CESM
- model
date: "2016-04-20T00:00:00Z"
lastmod: "2019-04-17T00:00:00Z"
featured: false
draft: false
math: true
diagram: true

projects: []
---
### Basic approach, startup run:

1. Create a new case using the script under `~/CCSM4/scripts`, following the template: PATH, compset, resolution and machine file. Compset B is the fully coupled mode. 

		./create_newcase -case ~/ccsm4/$casename \
                               -compset B_2000 \
                               -res 0.9x1.25_gx1v6 \
                               -mach bluefire 
                               
2. Go to the $CASEROOT directory, `~/ccsm4/$case`, modify the processor layout (`env_mach_pes.xml`) or `env_conf.xml` files, then configure and build the model:

		./configure -case
		./$casename.$mach.build  
		
3. Create Production test (Optional): This will clone the current case and create a parallel folder `../$casename_ERT.x$mach`. Go to the folder, and execute following commands:

		./$casename_ERT.$mach.build
		bsub < $casename_ERT.$mach.test
		cat TestStatus

4. Once pass the test run, go back to the `$CASEROOT`, modify the `env_run.xml` as well as `%casename.$mach.run`. Using the given `xmlchange` script is recommended. The `%casename.$mach.run` is the batch submit script. Depending on the machines, it could be executed through `bsub` or `qsub`. In the `env_run.xml` file, one can edit items such as `STOP_N`, `STOP_OPTION` and `RESUBMIT`, to adjust the simulation length, as well as the resubmit frequencies. This modifications don't require rebuilding executables.



### A branch or hybrid run:
1. Follow Step 1 in the previous example to create a new case `$casename2`.
2. Edit `env_conf.xml`:

		xmlchange -file env_conf.xml -id RUN_TYPE    -val branch
		xmlchange -file env_conf.xml -id RUN_REFCASE -val $casename1
		xmlchange -file env_conf.xml -id RUN_REFDATE -val 0001-02-01
		
3. For a hybrid run, set `RUN_TYPE` to `hybrid` instead.

4. Configure and build the case executable.

		./configure -case
		./$casename.$mach.build   

5. Copy the necessary restart/initial data into `$RUNROOT`, a path similar to `.../exe/$casename2/run`
6. Repeat Step 4 in the previous example. 

--

### File locking explained:
Locking variables is a feature of CCSM that prevents users from changing variables after they have been resolved (used) in other parts of the scripts system. The variables in env_case are locked when create_newcase is called. The env_conf and env_mach_pes variables are locked when configure is called. The env_build variables are locked when CCSM is built, and the env_run variables are never locked and can be changed anytime. In addition, the Macros file is locked as part of the build step. The `$CASEROOT/LockedFiles` directory saves copies of the xml files to facilitate the locking feature. 


--

More advanced use cases can be found in Chapter 9 of the [CCSM4 user guide](http://www.cesm.ucar.edu/models/ccsm4.0/ccsm_doc/ug.pdf)
                             