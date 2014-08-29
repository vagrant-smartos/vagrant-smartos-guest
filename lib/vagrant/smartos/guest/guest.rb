module VagrantPlugins
  module GuestSmartos
    class Plugin < Vagrant.plugin('2')
      guest_capability("smartos", "rsync_installed") do
        require_relative "cap/rsync"
        Cap::RSync
      end

      guest_capability("smartos", "rsync_command") do
        require_relative "cap/rsync"
        Cap::RSync
      end

      guest_capability("smartos", "rsync_post") do
        require_relative "cap/rsync"
        Cap::RSync
      end

      guest_capability("smartos", "rsync_pre") do
        require_relative "cap/rsync"
        Cap::RSync
      end
    end
  end
end
