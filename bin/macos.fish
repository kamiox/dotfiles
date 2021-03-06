function generate_ssh_key
    echo "Generate a ssh key for you"
    echo "What's your email address?"

    read -l email
    ssh-keygen -t rsa -b 4096 -C $email

    echo ""
    echo "Done!"
end

function mac_init
    echo "Run this after started vim once and added fishshell to /etc/shells"
    echo "Initializing your Mac :)"

    set_fish_as_default_shell
    install_fish_plugins
    compile_vim_plugins
    disable_bouncing_dock_icons

    echo "Your mac is set up and ready!"
end

function set_fish_as_default_shell
    echo "Setting fish as default shell"
    echo "Remember to add fish shell to /etc/shells"
    echo (which fish)
    echo ""

    chsh -s (which fish)

    echo ""
    echo "Done!"
    echo ""
end

function install_fish_plugins
    echo "Installing fish shell plugins"
    echo ""

    fisher

    echo ""
    echo "Done!"
    echo ""
end

function disable_bouncing_dock_icons
    echo "Disabling bouncing dock icons"

    defaults write com.apple.dock no-bouncing -bool TRUE
    killall Dock

    echo ""
    echo "Disabled bouncing dock icons. 😝"
    echo ""
end

function compile_vim_plugins
    compile_command_t
    compile_YCM
end

function compile_YCM
    pushd ~/.vim/.vim/bundle/YouCompleteMe/
    echo "Compiling YCM"
    ./install.py
    echo ""
    echo "Done!"
    echo ""
    popd
end

function compile_command_t
    pushd ~/.vim/.vim/bundle/command-t/ruby/command-t/
    echo "Configuring CommandT"
    ruby extconf.rb
    echo "Compiling CommandT"
    make
    echo ""
    echo "Done!"
    echo ""
    popd
end
