[GtkTemplate (ui = "/com/fyralabs/ValaTemplate/mainwindow.ui")]
public class ValaTemplate.MainWindow : He.ApplicationWindow {
    public MainWindow (He.Application application) {
        Object (
            application: application,
            icon_name: Config.APP_ID,
            title: _("Vala Template")
        );
    }

    construct {
    }
}
