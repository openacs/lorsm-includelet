ad_library {

    Lorsm Includelet Install library

    Procedures that deal with installing, instantiating, mounting.

    @creation-date 2009-02-15
    @author Don Baccus <dhogaza@pacifier.com>
    @cvs-id 
}

namespace eval lorsm_includelet::install {}

ad_proc -private lorsm_includelet::install::package_install {} {
    Package installation callback proc
} {

    db_transaction {

        # admin includelet
        layout::includelet::new \
            -name lorsm_admin_includelet \
            -description #lorsm-includelet.admin_pretty_name# \
            -title #lorsm-includelet.admin_pretty_name# \
            -application lorsm \
            -template /packages/lorsm-includelet/lib/lorsm-admin-includelet \
            -required_privilege admin

        # User includelet
        layout::includelet::new \
            -name lorsm_includelet \
            -description #lorsm-includelet.pretty_name# \
            -title #lorsm-includelet.pretty_name# \
            -application lorsm \
            -template /packages/lorsm-includelet/lib/lorsm-includelet
    }
}

ad_proc -private lorsm_includelet::install::package_uninstall {} {
    Package uninstallation callback proc
} {
    layout::includelet::delete -name lorsm_admin_includelet
    layout::includelet::delete -name lorsm_includelet
}
