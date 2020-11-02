while true; do
    xsetroot -name " $(date +"%r, %Y, %m, %d") | $(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')% $(sensors | grep Tdie | awk '{print ($2)}' | tr -d "+") CPU | $(free -m | grep Mem | awk '{print ($3)}') MiB  | $(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader) GPU, $(nvidia-smi --query-gpu=utilization.memory --format=csv,noheader) MEM, $(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)°C "
    sleep 1s
done &
