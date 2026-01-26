# awk

## Printing Columns

- `awk '{ print $1 }' file.txt` — Print the first column (default delimiter is space)
- `awk '{ print $1, $3 }' file.txt` — Print the 1st and 3rd columns
- `awk -F':' '{ print $1 }' /etc/passwd` — Specify a custom field separator (e.g., ':')
- `awk '{ print $NF }' file.txt` — Print the last column ($NF = Number of Fields)

## Filtering Data

- `awk '$3 > 100' file.txt` — Print lines where the 3rd column is greater than 100
- `awk '/pattern/ { print $2 }' file.txt` — Find a pattern and print the 2nd column
- `awk 'length($0) > 80' file.txt` — Print lines longer than 80 characters
- `awk 'NR >= 5 && NR <= 10' file.txt` — Print lines 5 to 10 (NR = Number of Records)

## Calculations and Aggregates

- `awk '{ sum += $1 } END { print sum }' file.txt` — Sum the values in the first column
- `awk '{ sum += $1 } END { print sum / NR }' file.txt` — Calculate the average
- `awk '!visited[$0]++' file.txt` — Remove duplicate lines without sorting (unique)
