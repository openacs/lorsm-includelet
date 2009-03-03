ad_page_contract {

    The display logic for the LORS Management admin includelet

    @author Don Baccus (dhogaza@pacifier.com)
    @creation-date 2008-02-16
    @cvs-id $Id$

} -properties {

}

set lors_central_package_id [apm_package_id_from_key "lors-central"]
set lors_central_url [apm_package_url_from_id $lors_central_package_id]

if { ![string equal $lors_central_package_id 0] } {
    set use_lc_p [parameter::get \
                    -parameter "UploadUsingLorsCentralP" \
                    -package_id $lors_central_package_id]
} else {
    set use_lc_p 0
}

set url [lindex [site_node::get_url_from_object_id -object_id $package_id] 0]

ad_return_template
