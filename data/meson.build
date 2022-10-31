# install app icons
scalable_dir = 'icons/scalable/apps'
install_data(
  scalable_dir / f'co.tauos.ValaTemplate.svg',
  install_dir : get_option('datadir') / 'icons/hicolor' / scalable_dir,
)

symbolic_dir = 'icons/symbolic/apps'
install_data(
  symbolic_dir / f'co.tauos.ValaTemplate-symbolic.svg',

  install_dir : get_option('datadir') / 'icons/hicolor' / symbolic_dir,
  rename      : f'co.tauos.ValaTemplate-symbolic.svg',
)

install_data(
    meson.project_name() + '.gschema.xml',
    install_dir: join_paths(get_option('datadir'), 'glib-2.0', 'schemas')
)

i18n.merge_file(
    input: meson.project_name() + '.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

i18n.merge_file(
    input: meson.project_name() + '.appdata.xml.in',
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)
