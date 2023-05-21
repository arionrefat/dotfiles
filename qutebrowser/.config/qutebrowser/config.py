config.load_autoconfig()

# Chose theme here
import catppuccin
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
catppuccin.setup(c, 'mocha')

# Interchange the prev and next keybinds
config.unbind('J', mode='normal')
config.unbind('K', mode='normal')

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
