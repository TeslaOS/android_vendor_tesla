for combo in $(curl -s https://raw.githubusercontent.com/TeslaOS/tesla_devices/master/tesla-build-targets | sed -e 's/#.*$//' | grep lp5.1 | awk '{printf "tesla_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
