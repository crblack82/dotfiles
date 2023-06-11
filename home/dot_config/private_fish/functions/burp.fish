function burp
        sudo -v

        echo "🦄 Updating npm"
        npm update --silent -g

        echo "🍺 Updating homebrew"
        brew update --quiet
        brew upgrade --quiet
        brew cleanup --quiet
        sudo -v && brew cu -a -y

        echo "🐟 Updating fish"
        fisher update > /dev/null
        fish_update_completions > /dev/null

        echo "🍎 Updating mac app store"
        sudo -v && /usr/sbin/softwareupdate -ia > /dev/null
end