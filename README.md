# Jarník Build System

## Overview

The idea is create a self-contained command line build system interface in order to perform common tasks in software development and deployment process through docker containers.

The name for this build system will be Jarník, inspired on Vojtěch Jarník (1897 - 1970). Janik was a czech mathematician who published (1930) an algorithm to find the Minimun Spaning Tree (MST) in a connected graph.

We will call “legos” to the built repositories.

## Tenets

### Short term

* The build system must be runnable over any *NIX distribution including distributions supported by Windows Subsystem for Linux (WSL).
* The build system will be documented keeping the *NIX syntax.
* The build system should be independent of any specific shell, then we try to keep POSIX shell syntax as possible.
* *The build system won't never require any dependency to run persé.*
* Installation of the build system by only running the shell built
* The developer will be able to create a new project folder
* Importing repositories from git sources like bitbucket/lattephp through public ssh key.
* Build the “legos” needed to deploy in one environment.
* Perform unit testing over the repositories.
* Clean the “legos” already created before.
* Attach project repositories to environments performing overrides in the environment.
* Update project repositories in attached environments.
* Detach an environment to the project repositories, undoing the overrides in order to return to the original environment state.
* Provide a short way to release changes, that implies building, testing and attaching/updating and environment.
* Remove repositories from the project in safe way.
* Post a Code Review with the latest and non-merged commits generating a pull request.
* Provide a way to set the dependency graph to work.
* List all the repositories in the project.
* Provide a way to check the code style.
* Provide a way to sanitize the source code before build.
* Provide a way to run a shell command over the repositories.
* Provide a way to remove the build system from the host.
* Provide a way to upgrade the build system.
* All subcommands must be accept parameter in *NIX CLI way and Windows CLI way, we mean prefixed with dash “`-`” and slash “`/`” respectively, when the parameter needs be explicitly named.
* Have fun!

### Long term

* Remote development support.
* Provide a friendly web user interface to build and merge dependency graphs.
* Support for several bitbucket sources.
* Support for several git sources, like github, gitfarm, etcetera.
* Support for several version control systems like Subversion (svn) and Mercurial (hg).

### TOTALLY out of scope

* Specific support for MacOS X or any Apple OS, if the Jarnik works as it, that is fine and enough, we won't implement any specific stuff for MacOS X development, for instance taking care about *.DS_Store* hidden directories.
* Java build support. The only way to support Java will be for Android Applications and really carefully reviewed.

## Syntax

`jarnik {command|shortcut} [params]`

### Installation

* Command: `install`
* Description: Installs the latest version of Jarník Build System in the Operating System.
* Syntax: `jarnik install [path]`
* Parameters:
    * `path`  Optional. Destination folder to install. By default, it will be `/usr/bin`. In that case, super user privileges may be required.
* Examples:

```
sudo jarnik install
jarnik install ~/bin
```

### Upgrade

* Command: `upgrade`
* Description: Upgrades Jarník Build System in the Operating System to the latest version available in the respository.
* Syntax: `jarnik upgrade`
* Parameters:
    * None, but super user privileges may be required.
* Examples:

```
sudo jarnik upgrade
jarnik upgrade
```

### Uninstallation

* Command: `uninstall`
* Description: Removes Jarník Build System from the Operating System.
* Syntax: `jarnik uninstall`
* Parameters:
    * None, but super user privileges may be required.
* Examples:

```
sudo jarnik uninstall
jarnik uninstall
```

### Help

* Command: `help`
* Description: Create a new project base structure.
* Shortcut: `h`
* Syntax: `jarnik {help | -h | /h} [command]`
* Parameters:
    * `command`  Optional. Specific command to view documentation. A help summary for all commands will be shown if is omitted.
* Examples:

```
jarnik help
jarnik help new
jarnik -h new
jarnik /n new
```

### Create a new project

* Command: `new`
* Description: Create a new project base structure.
* Shortcut: `n`
* Syntax: `jarnik {new | -n | /n} [path/]name`
* Parameters:
    * `path`  Optional. Path to create the new project folder. Current directory will be used by default.
    * `name` Required. Name of the project folder.
* Examples:

```
jarnik new myproject
jarnik new mystuff/myproject
jarnik -n myproject
jarnik /n mystuff/myproject
```

