.bytecode 50.0
.class public synchronized com/nd/android/u/controller/MessageConst$MessageState
.super java/lang/Object
.inner class public static MessageState inner com/nd/android/u/controller/MessageConst$MessageState outer com/nd/android/u/controller/MessageConst

.field public static final 'COMMON_STATE_CHANGED' I = 99


.field public static final 'DELETED' I = 10


.field public static final 'DELETEDALL' I = 11


.field public static final 'DOWNLOADING' I = 6


.field public static final 'DOWNLOAD_FAIL' I = 8


.field public static final 'DOWNLOAD_SUCCESS' I = 7


.field public static final 'ERP_UPDATE' I = 22


.field public static final 'GIF_DECODE_SUCCESS' I = 15


.field public static final 'PLAYING' I = 16


.field public static final 'PROGRESSED' I = 9


.field public static final 'RECEIVED' I = -1


.field public static final 'SENDING' I = 1


.field public static final 'SEND_FAIL' I = 2


.field public static final 'SEND_NEW' I = -2


.field public static final 'SEND_SUCCESS' I = 0


.field public static final 'UPLOADING' I = 3


.field public static final 'UPLOAD_FAIL' I = 4


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static isFailed(I)Z
iload 0
iconst_2
if_icmpeq L0
iload 0
iconst_4
if_icmpeq L0
iload 0
bipush 8
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isSuccess(I)Z
iload 0
ifeq L0
iload 0
bipush 7
if_icmpeq L0
iload 0
iconst_m1
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
