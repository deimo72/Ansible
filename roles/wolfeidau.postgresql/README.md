# Ansible PostgreSQL

Configures postgres and sets up backups.

# Requirements

* Ubuntu 14.04

# Role Variables

TBA

# Example Playbook

    - hosts: servers
      roles:
         - { role: wolfeidau.ansible-postgres, postgres_user_password: "abc123" }

# TODO

* Permit local ranges rather than 0.0.0.0
* Reconfigure listening interfaces based on requirements.
* Cull backups.

# License

Copyright (c) 2014 Mark Wolfe
Licensed under the MIT license.
