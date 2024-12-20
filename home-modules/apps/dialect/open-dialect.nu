# do --ignore-errors {pkill dialect}
let process = hyprctl clients -j | from json | where class == app.drey.Dialect

match ($process | is-empty) { # Is translator inactive?
  true  => {focusCursor center | dialect}
  false => {pkill       dialect         }
}
