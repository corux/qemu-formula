{% from 'qemu/map.jinja' import qemu with context %}

tuned:
  pkg.installed:
    - name: tuned

  service.running:
    - name: tuned
    - enable: True
    - require:
      - pkg: tuned

  cmd.run:
    - name: tuned-adm profile {{ qemu.tuned_profile }}
    - unless: tuned-adm active | grep {{ qemu.tuned_profile }}
    - require:
      - service: tuned
