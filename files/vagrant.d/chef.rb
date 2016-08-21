file '/etc/profile.d/vagrant.sh' do
  content <<EOF
if [ -n "$BASH_VERSION" ] && [ "$PWD" == "$HOME" ]
then
  cd /vagrant
fi
EOF
end

package 'ctags'
package 'git'
package 'htop'
