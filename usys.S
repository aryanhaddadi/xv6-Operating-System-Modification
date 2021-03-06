#include "syscall.h"
#include "traps.h"

#define SYSCALL(name) \
  .globl name; \
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
SYSCALL(exit)
SYSCALL(wait)
SYSCALL(pipe)
SYSCALL(read)
SYSCALL(write)
SYSCALL(close)
SYSCALL(kill)
SYSCALL(exec)
SYSCALL(open)
SYSCALL(mknod)
SYSCALL(unlink)
SYSCALL(fstat)
SYSCALL(link)
SYSCALL(mkdir)
SYSCALL(chdir)
SYSCALL(dup)
SYSCALL(getpid)
SYSCALL(sbrk)
SYSCALL(sleep)
SYSCALL(uptime)
SYSCALL(count_num_of_digits)
SYSCALL(set_sleep)
SYSCALL(get_time)
SYSCALL(set_path)
SYSCALL(get_parent_id)
SYSCALL(get_children)
SYSCALL(change_process_queue)
SYSCALL(set_lottery_ticket)
SYSCALL(set_srpf_priority)
SYSCALL(print_processes_info)
SYSCALL(make_barrier)
SYSCALL(check_barrier)
SYSCALL(test_remutex)