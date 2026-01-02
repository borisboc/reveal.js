touch file.html
rm file.html
touch file.html

cat start.html >> file.html

for file in examples/aivision/*.html; do
    echo "$file"
    echo "<section>" >> file.html
    cat $file >> file.html    
    echo "</section>" >> file.html

done

cat end.html >> file.html

mv file.html index.html