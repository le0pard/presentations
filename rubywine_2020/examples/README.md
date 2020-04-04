```bash

inspec exec test0.rb
inspec exec test0.rb -t ssh://vagrant@127.0.0.1:2222 -i /Users/leo/Downloads/rubywine/.vagrant/machines/default/virtualbox/private_key --sudo
inspec exec test1.rb -t ssh://vagrant@127.0.0.1:2222 -i /Users/leo/Downloads/rubywine/.vagrant/machines/default/virtualbox/private_key --sudo
inspec exec test2.rb -t ssh://vagrant@127.0.0.1:2222 -i /Users/leo/Downloads/rubywine/.vagrant/machines/default/virtualbox/private_key --sudo

inspec supermarket profiles

inspec shell

```
