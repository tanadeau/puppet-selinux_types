Usage
=====
These types only require that `/usr/sbin/semanage` be installed.

Types
=====

selinux_fcontext
----------------

Creates, deletes, and modifies the SELinux file context rules database. Note
that it will not automatically initiate a filesystem relabel after it
completes, but you can of course have your `selinux_fcontext` resources
refresh an `exec` to handle that if you want that behavior.

Example:

```selinux_fcontext { '/usr/lib(64)?/nagios/plugins/check_disk':
  ensure   => 'present',
  selrange => 's0.c1023',
  seltype  => 'nagios_unconfined_plugin_exec_t',
  seluser  => 'root',
}```

