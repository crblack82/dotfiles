#!/bin/zsh

set -eufo pipefail

# Install mac os configuration
echo '🖥   Configuring macos.'

# Close any open System Preferences panes, to prevent them from overriding the settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# ~/.macos — https://mths.be/macos

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Enable auto appearence mode
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true

###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Speed up animation when auto-hiding the dock
defaults write com.apple.dock autohide-time-modifier -float 0.5
defaults write com.apple.dock autohide-delay -float 0

###############################################################################
# Keyboard                                                                    #
###############################################################################

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

###############################################################################
# Trackpad                                                                    #
###############################################################################

# Use all F1, F2, etc. keys as standard function keys (requires restart)
defaults write -g com.apple.keyboard.fnState -bool true

# Enable tap to click for this user and for the login screen
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable three finger drag
#defaults write com.apple.AppleMultitouchTrackpad Dragging -int 1
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 1

###############################################################################
# Finder                                                                      #
###############################################################################

# Allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Link iCloud to home directory
ln -sf $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/ $HOME/iCloud

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

# Enable continuous spellchecking
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

# Disable auto-correct
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

###############################################################################
# iTerm2                                                                      #
###############################################################################

# Disable warning when doing multi-line paste
defaults write com.googlecode.iterm2 NoSyncDoNotWarnBeforeMultilinePaste -bool true
defaults write com.googlecode.iterm2 NoSyncDoNotWarnBeforeMultilinePaste_selection -bool false

# Disable warning when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" "Finder" "Safari"; do killall "${app}" 2>/dev/null; done