Puppet::Type.newtype(:selinux_fcontext) do
  desc "SELinux file context pattern"

  ensurable

  newparam :filespec, :namevar => true do
    desc "Regular expression file pattern to match"
  end

  newproperty :filetype do
    desc "The file type to which the rule applies"
  end

  newproperty :selrange do
    desc "The SELinux level to be applied to `pattern`"
  end

  newproperty :seltype do
    desc "The SELinux type to be applied to `pattern`"
  end

  newproperty :seluser do
    desc "The SELinux user to apply to `pattern"
  end
end
