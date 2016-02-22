============
qemu-formula
============

.. image:: https://travis-ci.org/corux/qemu-formula.svg?branch=master
    :target: https://travis-ci.org/corux/qemu-formula

Installs the QEMU Server, QEMU Guest Agent and tuned.

Available states
================

.. contents::
    :local:

``qemu``
--------

Installs the QEMU kvm package.

``qemu.guest``
--------------

Installs the QEMU Guest Agent.

``qemu.tuned``
--------------

Installs and configures tuned with the virtual-guest or virtual-host profile.
