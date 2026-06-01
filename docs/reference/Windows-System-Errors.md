---
title: Windows System Errors
description: "Reference table of Microsoft Windows System Error Codes (0–499) for interpreting Windows job exit codes in OpCon."
product_area: Reference
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Business Analyst
  - System Configuration
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# Windows System Errors

This table lists Microsoft Windows System Error Codes 0 through 499, including the symbolic constant, numeric value, and description for each code. Use this reference to interpret the exit code returned by a Windows job that ends in a failed or finished-OK status in OpCon.

| Constant | Value | Description |
|---|---|---|
| ERROR_SUCCESS | 0 | The operation completed successfully. |
| ERROR_INVALID_FUNCTION | 1 | Incorrect function. |
| ERROR_FILE_NOT_FOUND | 2 | The system cannot find the file specified. |
| ERROR_PATH_NOT_FOUND | 3 | The system cannot find the path specified. |
| ERROR_TOO_MANY_OPEN_FILES | 4 | The system cannot open the file. |
| ERROR_ACCESS_DENIED | 5 | Access is denied. |
| ERROR_INVALID_HANDLE | 6 | The handle is invalid. |
| ERROR_ARENA_TRASHED | 7 | The storage control blocks were destroyed. |
| ERROR_NOT_ENOUGH_MEMORY | 8 | Not enough storage is available to process this command. |
| ERROR_INVALID_BLOCK | 9 | The storage control block address is invalid. |
| ERROR_BAD_ENVIRONMENT | 10 | The environment is incorrect. |
| ERROR_BAD_FORMAT | 11 | An attempt was made to load a program with an incorrect format. |
| ERROR_INVALID_ACCESS | 12 | The access code is invalid. |
| ERROR_INVALID_DATA | 13 | The data is invalid. |
| ERROR_OUTOFMEMORY | 14 | Not enough storage is available to complete this operation. |
| ERROR_INVALID_DRIVE | 15 | The system cannot find the drive specified. |
| ERROR_CURRENT_DIRECTORY | 16 | The directory cannot be removed. |
| ERROR_NOT_SAME_DEVICE | 17 | The system cannot move the file to a different disk drive. |
| ERROR_NO_MORE_FILES | 18 | There are no more files. |
| ERROR_WRITE_PROTECT | 19 | The media is write protected. |
| ERROR_BAD_UNIT | 20 | The system cannot find the device specified. |
| ERROR_NOT_READY | 21 | The device is not ready. |
| ERROR_BAD_COMMAND | 22 | The device does not recognize the command. |
| ERROR_CRC | 23 | Data error (cyclic redundancy check). |
| ERROR_BAD_LENGTH | 24 | The program issued a command but the command length is incorrect. |
| ERROR_SEEK | 25 | The drive cannot locate a specific area or track on the disk. |
| ERROR_NOT_DOS_DISK | 26 | The specified disk or diskette cannot be accessed. |
| ERROR_SECTOR_NOT_FOUND | 27 | The drive cannot find the sector requested. |
| ERROR_OUT_OF_PAPER | 28 | The printer is out of paper. |
| ERROR_WRITE_FAULT | 29 | The system cannot write to the specified device. |
| ERROR_READ_FAULT | 30 | The system cannot read from the specified device. |
| ERROR_GEN_FAILURE | 31 | A device attached to the system is not functioning. |
| ERROR_SHARING_VIOLATION | 32 | The process cannot access the file because it is being used by another process. |
| ERROR_LOCK_VIOLATION | 33 | The process cannot access the file because another process has locked a portion of the file. |
| ERROR_WRONG_DISK | 34 | The wrong diskette is in the drive. Insert %2 (Volume Serial Number: %3) into drive %1. |
| ERROR_SHARING_BUFFER_EXCEEDED | 36 | Too many files opened for sharing. |
| ERROR_HANDLE_EOF | 38 | Reached the end of the file. |
| ERROR_HANDLE_DISK_FULL | 39 | The disk is full. |
| ERROR_NOT_SUPPORTED | 50 | The request is not supported. |
| ERROR_REM_NOT_LIST | 51 | Windows cannot find the network path. Verify that the network path is correct and the destination computer is not busy or turned off. If Windows still cannot find the network path, contact the network administrator. |
| ERROR_DUP_NAME | 52 | The connection was not made because a duplicate name exists on the network. Go to System in Control Panel to change the computer name and try again. |
| ERROR_BAD_NETPATH | 53 | The network path was not found. |
| ERROR_NETWORK_BUSY | 54 | The network is busy. |
| ERROR_DEV_NOT_EXIST | 55 | The specified network resource or device is no longer available. |
| ERROR_TOO_MANY_CMDS | 56 | The network BIOS command limit has been reached. |
| ERROR_ADAP_HDW_ERR | 57 | A network adapter hardware error occurred. |
| ERROR_BAD_NET_RESP | 58 | The specified server cannot perform the requested operation. |
| ERROR_UNEXP_NET_ERR | 59 | An unexpected network error occurred. |
| ERROR_BAD_REM_ADAP | 60 | The remote adapter is not compatible. |
| ERROR_PRINTQ_FULL | 61 | The printer queue is full. |
| ERROR_NO_SPOOL_SPACE | 62 | Space to store the file waiting to be printed is not available on the server. |
| ERROR_PRINT_CANCELLED | 63 | The file waiting to be printed was deleted. |
| ERROR_NETNAME_DELETED | 64 | The specified network name is no longer available. |
| ERROR_NETWORK_ACCESS_DENIED | 65 | Network access is denied. |
| ERROR_BAD_DEV_TYPE | 66 | The network resource type is not correct. |
| ERROR_BAD_NET_NAME | 67 | The network name cannot be found. |
| ERROR_TOO_MANY_NAMES | 68 | The name limit for the local computer network adapter card was exceeded. |
| ERROR_TOO_MANY_SESS | 69 | The network BIOS session limit was exceeded. |
| ERROR_SHARING_PAUSED | 70 | The remote server has been paused or is in the process of being started. |
| ERROR_REQ_NOT_ACCEP | 71 | No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept. |
| ERROR_REDIR_PAUSED | 72 | The specified printer or disk device has been paused. |
| ERROR_FILE_EXISTS | 80 | The file exists. |
| ERROR_CANNOT_MAKE | 82 | The directory or file cannot be created. |
| ERROR_FAIL_I24 | 83 | Fail on INT 24. |
| ERROR_OUT_OF_STRUCTURES | 84 | Storage to process this request is not available. |
| ERROR_ALREADY_ASSIGNED | 85 | The local device name is already in use. |
| ERROR_INVALID_PASSWORD | 86 | The specified network password is not correct. |
| ERROR_INVALID_PARAMETER | 87 | The parameter is incorrect. |
| ERROR_NET_WRITE_FAULT | 88 | A write fault occurred on the network. |
| ERROR_NO_PROC_SLOTS | 89 | The system cannot start another process at this time. |
| ERROR_TOO_MANY_SEMAPHORES | 100 | Cannot create another system semaphore. |
| ERROR_EXCL_SEM_ALREADY_OWNED | 101 | The exclusive semaphore is owned by another process. |
| ERROR_SEM_IS_SET | 102 | The semaphore is set and cannot be closed. |
| ERROR_TOO_MANY_SEM_REQUESTS | 103 | The semaphore cannot be set again. |
| ERROR_INVALID_AT_INTERRUPT_TIME | 104 | Cannot request exclusive semaphores at interrupt time. |
| ERROR_SEM_OWNER_DIED | 105 | The previous ownership of this semaphore has ended. |
| ERROR_SEM_USER_LIMIT | 106 | Insert the diskette for drive %1. |
| ERROR_DISK_CHANGE | 107 | The program stopped because an alternate diskette was not inserted. |
| ERROR_DRIVE_LOCKED | 108 | The disk is in use or locked by another process. |
| ERROR_BROKEN_PIPE | 109 | The pipe has been ended. |
| ERROR_OPEN_FAILED | 110 | The system cannot open the device or file specified. |
| ERROR_BUFFER_OVERFLOW | 111 | The file name is too long. |
| ERROR_DISK_FULL | 112 | There is not enough space on the disk. |
| ERROR_NO_MORE_SEARCH_HANDLES | 113 | No more internal file identifiers available. |
| ERROR_INVALID_TARGET_HANDLE | 114 | The target internal file identifier is incorrect. |
| ERROR_INVALID_CATEGORY | 117 | The IOCTL call made by the application program is not correct. |
| ERROR_INVALID_VERIFY_SWITCH | 118 | The verify-on-write switch parameter value is not correct. |
| ERROR_BAD_DRIVER_LEVEL | 119 | The system does not support the command requested. |
| ERROR_CALL_NOT_IMPLEMENTED | 120 | This function is not supported on this system. |
| ERROR_SEM_TIMEOUT | 121 | The semaphore timeout period has expired. |
| ERROR_INSUFFICIENT_BUFFER | 122 | The data area passed to a system call is too small. |
| ERROR_INVALID_NAME | 123 | The filename, directory name, or volume label syntax is incorrect. |
| ERROR_INVALID_LEVEL | 124 | The system call level is not correct. |
| ERROR_NO_VOLUME_LABEL | 125 | The disk has no volume label. |
| ERROR_MOD_NOT_FOUND | 126 | The specified module could not be found. |
| ERROR_PROC_NOT_FOUND | 127 | The specified procedure could not be found. |
| ERROR_WAIT_NO_CHILDREN | 128 | There are no child processes to wait for. |
| ERROR_CHILD_NOT_COMPLETE | 129 | The %1 application cannot be run in Win32 mode. |
| ERROR_DIRECT_ACCESS_HANDLE | 130 | Attempt to use a file handle to an open disk partition for an operation other than raw disk I/O. |
| ERROR_NEGATIVE_SEEK | 131 | An attempt was made to move the file pointer before the beginning of the file. |
| ERROR_SEEK_ON_DEVICE | 132 | The file pointer cannot be set on the specified device or file. |
| ERROR_IS_JOIN_TARGET | 133 | A JOIN or SUBST command cannot be used for a drive that contains previously joined drives. |
| ERROR_IS_JOINED | 134 | An attempt was made to use a JOIN or SUBST command on a drive that has already been joined. |
| ERROR_IS_SUBSTED | 135 | An attempt was made to use a JOIN or SUBST command on a drive that has already been substituted. |
| ERROR_NOT_JOINED | 136 | The system tried to delete the JOIN of a drive that is not joined. |
| ERROR_NOT_SUBSTED | 137 | The system tried to delete the substitution of a drive that is not substituted. |
| ERROR_JOIN_TO_JOIN | 138 | The system tried to join a drive to a directory on a joined drive. |
| ERROR_SUBST_TO_SUBST | 139 | The system tried to substitute a drive to a directory on a substituted drive. |
| ERROR_JOIN_TO_SUBST | 140 | The system tried to join a drive to a directory on a substituted drive. |
| ERROR_SUBST_TO_JOIN | 141 | The system tried to SUBST a drive to a directory on a joined drive. |
| ERROR_BUSY_DRIVE | 142 | The system cannot perform a JOIN or SUBST at this time. |
| ERROR_SAME_DRIVE | 143 | The system cannot join or substitute a drive to or for a directory on the same drive. |
| ERROR_DIR_NOT_ROOT | 144 | The directory is not a subdirectory of the root directory. |
| ERROR_DIR_NOT_EMPTY | 145 | The directory is not empty. |
| ERROR_IS_SUBST_PATH | 146 | The path specified is being used in a substitute. |
| ERROR_IS_JOIN_PATH | 147 | Not enough resources are available to process this command. |
| ERROR_PATH_BUSY | 148 | The path specified cannot be used at this time. |
| ERROR_IS_SUBST_TARGET | 149 | An attempt was made to join or substitute a drive for which a directory on the drive is the target of a previous substitute. |
| ERROR_SYSTEM_TRACE | 150 | System trace information was not specified in the CONFIG.SYS file, or tracing is disallowed. |
| ERROR_INVALID_EVENT_COUNT | 151 | The number of specified semaphore events for DosMuxSemWait is not correct. |
| ERROR_TOO_MANY_MUXWAITERS | 152 | DosMuxSemWait did not run; too many semaphores are already set. |
| ERROR_INVALID_LIST_FORMAT | 153 | The DosMuxSemWait list is not correct. |
| ERROR_LABEL_TOO_LONG | 154 | The volume label entered exceeds the label character limit of the target file system. |
| ERROR_TOO_MANY_TCBS | 155 | Cannot create another thread. |
| ERROR_SIGNAL_REFUSED | 156 | The recipient process has refused the signal. |
| ERROR_DISCARDED | 157 | The segment is already discarded and cannot be locked. |
| ERROR_NOT_LOCKED | 158 | The segment is already unlocked. |
| ERROR_BAD_THREADID_ADDR | 159 | The address for the thread ID is not correct. |
| ERROR_BAD_ARGUMENTS | 160 | One or more arguments are not correct. |
| ERROR_BAD_PATHNAME | 161 | The specified path is invalid. |
| ERROR_SIGNAL_PENDING | 162 | A signal is already pending. |
| ERROR_MAX_THRDS_REACHED | 164 | No more threads can be created in the system. |
| ERROR_LOCK_FAILED | 167 | Unable to lock a region of a file. |
| ERROR_BUSY | 170 | The requested resource is in use. |
| ERROR_CANCEL_VIOLATION | 173 | A lock request was not outstanding for the supplied cancel region. |
| ERROR_ATOMIC_LOCKS_NOT_SUPPORTED | 174 | The file system does not support atomic changes to the lock type. |
| ERROR_INVALID_SEGMENT_NUMBER | 180 | The system detected a segment number that was not correct. |
| ERROR_INVALID_ORDINAL | 182 | The operating system cannot run %1. |
| ERROR_ALREADY_EXISTS | 183 | Cannot create a file when that file already exists. |
| ERROR_INVALID_FLAG_NUMBER | 186 | The flag passed is not correct. |
| ERROR_SEM_NOT_FOUND | 187 | The specified system semaphore name was not found. |
| ERROR_INVALID_STARTING_CODESEG | 188 | The operating system cannot run %1. |
| ERROR_INVALID_STACKSEG | 189 | The operating system cannot run %1. |
| ERROR_INVALID_MODULETYPE | 190 | The operating system cannot run %1. |
| ERROR_INVALID_EXE_SIGNATURE | 191 | Cannot run %1 in Win32 mode. |
| ERROR_EXE_MARKED_INVALID | 192 | The operating system cannot run %1. |
| ERROR_BAD_EXE_FORMAT | 193 | The program is not a valid Win32 application. |
| ERROR_ITERATED_DATA_EXCEEDS_64k | 194 | The operating system cannot run %1. |
| ERROR_INVALID_MINALLOCSIZE | 195 | The operating system cannot run %1. |
| ERROR_DYNLINK_FROM_INVALID_RING | 196 | The operating system cannot run this application program. |
| ERROR_IOPL_NOT_ENABLED | 197 | The operating system is not presently configured to run this application. |
| ERROR_INVALID_SEGDPL | 198 | The operating system cannot run %1. |
| ERROR_AUTODATASEG_EXCEEDS_64k | 199 | The operating system cannot run this application program. |
| ERROR_RING2SEG_MUST_BE_MOVABLE | 200 | The code segment cannot be greater than or equal to 64K. |
| ERROR_RELOC_CHAIN_XEEDS_SEGLIM | 201 | The operating system cannot run %1. |
| ERROR_INFLOOP_IN_RELOC_CHAIN | 202 | The operating system cannot run %1. |
| ERROR_ENVVAR_NOT_FOUND | 203 | The system could not find the environment option that was entered. |
| ERROR_NO_SIGNAL_SENT | 205 | No process in the command subtree has a signal handler. |
| ERROR_FILENAME_EXCED_RANGE | 206 | The filename or extension is too long. |
| ERROR_RING2_STACK_IN_USE | 207 | The ring 2 stack is in use. |
| ERROR_META_EXPANSION_TOO_LONG | 208 | The global filename characters, * or ?, are entered incorrectly or too many global filename characters are specified. |
| ERROR_INVALID_SIGNAL_NUMBER | 209 | The signal being posted is not correct. |
| ERROR_THREAD_1_INACTIVE | 210 | The signal handler cannot be set. |
| ERROR_LOCKED | 212 | The segment is locked and cannot be reallocated. |
| ERROR_TOO_MANY_MODULES | 214 | Too many dynamic-link modules are attached to this program or dynamic-link module. |
| ERROR_NESTING_NOT_ALLOWED | 215 | Cannot nest calls to LoadModule. |
| ERROR_EXE_MACHINE_TYPE_MISMATCH | 216 | The image file %1 is valid, but is for a machine type other than the current machine. |
| ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY | 217 | The image file %1 is signed, unable to modify. |
| ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY | 218 | The image file %1 is strong signed, unable to modify. |
| ERROR_BAD_PIPE | 230 | The pipe state is invalid. |
| ERROR_PIPE_BUSY | 231 | All pipe instances are busy. |
| ERROR_NO_DATA | 232 | The pipe is being closed. |
| ERROR_PIPE_NOT_CONNECTED | 233 | No process is on the other end of the pipe. |
| ERROR_MORE_DATA | 234 | More data is available. |
| ERROR_VC_DISCONNECTED | 240 | The session was canceled. |
| ERROR_INVALID_EA_NAME | 254 | The specified extended attribute name was invalid. |
| ERROR_EA_LIST_INCONSISTENT | 255 | The extended attributes are inconsistent. |
| WAIT_TIMEOUT | 258 | The wait operation timed out. |
| ERROR_NO_MORE_ITEMS | 259 | No more data is available. |
| ERROR_CANNOT_COPY | 266 | The copy functions cannot be used. |
| ERROR_DIRECTORY | 267 | The directory name is invalid. |
| ERROR_EAS_DIDNT_FIT | 275 | The extended attributes did not fit in the buffer. |
| ERROR_EA_FILE_CORRUPT | 276 | The extended attribute file on the mounted file system is corrupt. |
| ERROR_EA_TABLE_FULL | 277 | The extended attribute table file is full. |
| ERROR_INVALID_EA_HANDLE | 278 | The specified extended attribute handle is invalid. |
| ERROR_EAS_NOT_SUPPORTED | 282 | The mounted file system does not support extended attributes. |
| ERROR_NOT_OWNER | 288 | Attempt to release mutex not owned by caller. |
| ERROR_TOO_MANY_POSTS | 298 | Too many posts were made to a semaphore. |
| ERROR_PARTIAL_COPY | 299 | Only part of a ReadProcessMemory or WriteProcessMemory request was completed. |
| ERROR_OPLOCK_NOT_GRANTED | 300 | The oplock request is denied. |
| ERROR_INVALID_OPLOCK_PROTOCOL | 301 | An invalid oplock acknowledgment was received by the system. |
| ERROR_DISK_TOO_FRAGMENTED | 302 | The volume is too fragmented to complete this operation. |
| ERROR_DELETE_PENDING | 303 | The file cannot be opened because it is in the process of being deleted. |
| ERROR_MR_MID_NOT_FOUND | 317 | The system cannot find message text for message number 0x%1 in the message file for %2. |
| ERROR_SCOPE_NOT_FOUND | 318 | The scope specified was not found. |
| ERROR_INVALID_ADDRESS | 487 | Attempt to access invalid address. |

**Source:** *"Platform SDK: Debugging and Error Handling: System Error Codes (0–499)."* Microsoft Developer Network (MSDN) Library.
