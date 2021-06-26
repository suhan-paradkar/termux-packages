#ifndef __LINUX_KERNEL_VERSION
# define __LINUX_KERNEL_VERSION        0
#endif
#define __ASSUME_STATFS64        1
#define __ASSUME_PSELECT        1
#define __ASSUME_ATFCTS        1
#define __ASSUME_SET_ROBUST_LIST        1
#define __ASSUME_IN_NONBLOCK        1
#define __ASSUME_PREADV        1
#define __ASSUME_PWRITEV        1
#define __ASSUME_SENDMMSG        1
#define __ASSUME_SENDMSG_SYSCALL        1
#define __ASSUME_RECVMSG_SYSCALL        1
#define __ASSUME_ACCEPT_SYSCALL                1
#define __ASSUME_CONNECT_SYSCALL        1
#define __ASSUME_RECVFROM_SYSCALL        1
#define __ASSUME_SENDTO_SYSCALL                1
#define __ASSUME_ACCEPT4_SYSCALL        1
#define __ASSUME_RECVMMSG_SYSCALL        1
#define __ASSUME_SENDMMSG_SYSCALL        1
#define __ASSUME_DIRECT_SYSVIPC_SYSCALLS        1
#if __LINUX_KERNEL_VERSION >= 0x030F00
# define __ASSUME_RENAMEAT2
#endif
#if __LINUX_KERNEL_VERSION >= 0x031300
# define __ASSUME_EXECVEAT        1
#endif
#if __LINUX_KERNEL_VERSION >= 0x040400
# define __ASSUME_MLOCK2 1
#endif
#if __LINUX_KERNEL_VERSION >= 0x040500
# define __ASSUME_COPY_FILE_RANGE 1
#endif
#if __LINUX_KERNEL_VERSION >= 0x040B00
# define __ASSUME_STATX 1
#endif
#define __ASSUME_CLONE_DEFAULT 1
