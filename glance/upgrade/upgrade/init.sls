{%- from "glance/map.jinja" import server with context %}

include:
 - glance.upgrade.upgrade.pre
 - glance.upgrade.service_stopped
 - glance.upgrade.pkgs_latest
 - glance.upgrade.render_config
 - glance.db.offline_sync
 - glance.upgrade.service_running
 - glance.upgrade.upgrade.post
