# Blueprint is a modern markup language for GTK. It is the recommended way to develop Helium applications.
# For more information on Blueprint, see https://jwestman.pages.gitlab.gnome.org/blueprint-compiler/

# This file is where you'll specify Blueprint files to compile.
# You'll also need to add them to your gresources.xml file, in order to reference them from Vala.

blueprint_sources = ['mainwindow.blp']

blueprints = custom_target(
    'blueprints',
    input: files(blueprint_sources),
    output: '.',
    command: [
        find_program('blueprint-compiler'),
        'batch-compile',
        '@OUTPUT@',
        '@CURRENT_SOURCE_DIR@',
        '@INPUT@',
    ],
)
