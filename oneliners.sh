# Dom Bennett
# Oneliners + descriptions

# Pause all processes writing to FILE (useful for parallel processes)
kill -STOP `lsof -t FILE`
# Restart all processes writing to FILE
kill -CONT `lsof -t FILE`
# lsof lists processes, -t returns just PIDs

# Run a job in the background and write STDOUT and STDERR to a log
sh myprocess.sh >& mylog.txt &  # Bash command
sh myprocess.sh > mylog.txt 2>&1  # UNIX-wide command (Ubuntu uses dash)
