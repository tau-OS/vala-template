# install app icons
scalable_dir = 'icons/scalable/apps'
install_data(
    scalable_dir / f'co.tauos.ValaTemplate.svg',
    install_dir: get_option('datadir') / 'icons/hicolor/scalable/apps',
)

symbolic_dir = 'icons/symbolic/apps'
install_data(
    symbolic_dir / f'co.tauos.ValaTemplate-symbolic.svg',

    install_dir: get_option('datadir') / 'icons/hicolor/symbolic/apps',
    rename: f'co.tauos.ValaTemplate-symbolic.svg',
)

install_data(
    meson.project_name() + '.gschema.xml',
    install_dir: join_paths(get_option('datadir'), 'glib-2.0', 'schemas'),
)

desktop_file = i18n.merge_file(
    input: configure_file(
        input: meson.project_name() + '.desktop.in.in',
        output: meson.project_name() + '.desktop.in',
        configuration: {'ICON_NAME': app_id, 'COMMAND': app_id},
    ),
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications'),
)

desktop_file_validate = find_program('desktop-file-validate', required: false)
if desktop_file_validate.found()
    test('validate-desktop', desktop_file_validate, args: [desktop_file])
endif

i18n.merge_file(
    input: configure_file(
        input: meson.project_name() + '.appdata.xml.in.in',
        output: meson.project_name() + '.appdata.xml.in',
        configuration: {'APP_ID': app_id, 'GETTEXT_PACKAGE': app_id},
    ),
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo'),
)
