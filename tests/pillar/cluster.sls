glance:
  server:
    enabled: true
    version: liberty
    workers: 8
    database:
      engine: mysql
      host: 127.0.0.1
      port: 3306
      name: glance
      user: glance
      password: password
    rabbit:
      host: 127.0.0.1
    registry:
      host: 127.0.0.1
      port: 9191
    bind:
      address: 127.0.0.1
      port: 9292
    identity:
      engine: keystone
      host: 127.0.0.1
      port: 35357
      user: glance
      password: password
      region: RegionOne
      tenant: service
    logging:
      log_appender: false
      log_handlers:
        watchedfile:
          enabled: true
        fluentd:
          enabled: false
        ossyslog:
          enabled: false
    message_queue:
      engine: rabbitmq
      members:
      - host: 127.0.0.1
      - host: 127.0.1.1
      - host: 127.0.2.1
      user: openstack
      password: password
      virtual_host: '/openstack'
    storage:
      engine: file
    audit:
      filter_factory: 'keystonemiddleware.audit:filter_factory'
      map_file: '/etc/pycadf/glance_api_audit_map.conf'
    policy:
      publicize_image: "role:admin"
      add_member:
    quota:
      image_member: -1
      image_property: 256
      image_tag: 256
      image_location: 15
      user_storage: 0
    cache:
      engine: memcached
      members:
      - host: 127.0.0.1
        port: 11211
      - host: 127.0.1.1
        port: 11211
      - host: 127.0.2.1
        port: 11211
      security:
        enabled: true
        strategy: ENCRYPT
        secret_key: secret
