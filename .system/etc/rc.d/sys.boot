# Start logging for all our services!
runsvdir -P /var/service &

# We can't use the kernel command line to change the scheduler
echo kyber > /sys/block/nvme0n1/queue/scheduler
