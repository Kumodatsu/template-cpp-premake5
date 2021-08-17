# Template for C++ with Premake5
This is a simple template repository for C++ projects which uses
[Premake](https://premake.github.io/) scripts to generate project files for
different build environments, such as Visual Studio or g++ and Make.
Feel free to use this template as a starting point for your own C++ projects or
modify it to your own liking.
Any feedback is appreciated.

## Files and folder structure
The root folder contains a `.gitignore` file which lists several generated files
such as the build output and project files generated with Premake.
This folder also contains three Premake scripts: `premake5.lua`, `projects.lua`
and `workspace.lua`.

`premake5.lua` is the main Premake script.
It contains several variables which you can change.
However, the variables with names ending in `_DIR` should always begin with the
root path.
The `START_PROJECT` variable should be the name of one of your executable
projects.

You can edit `workspace.lua` if you want to customize the build configurations
and targets.

`projects.lua` only contains a `PROJECTS` table.
The entries in this table are paths (relative to the repository's root folder)
to all folders which contain a project.
There should be a `premake5.lua` script in each of these folders with the
information needed for that project.
Furthermore, the entries are processed in the order they appear in the table.

The `projects` folder is intended to contain folders for your projects.
However, you can put your project folders anywhere; just specify the correct
paths in `projects.lua`.
By default, this template includes one library `lib` that is referenced by one
executable `program`.
They each have their own folder inside the `projects` folder, containing their
`premake5.lua` script and source code.

The `dependencies` folder is intended for external libraries you may be using.
If you add a dependency - especially if you add them as a git submodule - I
recommend adding two nested folders inside the `dependencies` folder, and put
the `premake5.lua` script in the top folder.
For example, if you want to add [GLFW](https://github.com/glfw/glfw), put it in
`dependencies/glfw/glfw` and put a Premake script in `dependencies/glfw`.
Then add the latter path to `projects.lua`.
This way, you ensure no project files are generated into the dependency's folder
itself, which should keep things a bit more organized - again, especially if
that folder was added as a submodule.

By default the build output is generated in an `_out` folder.
You can change this in the `premake5.lua` file in the repository's root folder
by editing the `BIN_DIR` and `OBJ_DIR` variables.

You can generate the project files for your preferred environment by running the
command

    premake5 [action]

from the repository's root folder, where `[action]` corresponds to one of the
[actions supported by Premake](https://premake.github.io/docs/Using-Premake).
You may have to rerun this command if you add any new files afterwards.

## What you should do yourself
* Make a repository using this template.
Or download the source and use the files in your own project, or do whatever
else you may want to do with them.
* If you haven't already, download [Premake](https://premake.github.io/) and
make sure the executable is reachable through your PATH environment variable.
I also highly recommend familiarizing yourself with how Premake scripts work.
* Have some way to build C++ projects, which I assume you already do.
Something like Visual Studio or g++ and Make.
Those are in fact the only environments I tested with this template, but others
_should_ work if they are supported by Premake.
* I recommend putting the generated project file types in the `.gitignore` if
they aren't already, since they can just be regenerated using the Premake
scripts.
* Make sure to replace this README's contents with something relevant to your
own project!
* Also consider adding a license if you intend to publicize your work.
Licenses are useful.

That's about it.
You don't have to credit me if you decide to use this template.
But if you have any feedback, do let me know!
