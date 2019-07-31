.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
.super java/lang/Object
.inner class public static Downloaded inner com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded outer com/nd/rj/common/incrementalupdates/DownloadProgress

.field private static final 'CLEAR_STATUS' I = -3


.field private static final 'FAILED_STATUS' I = -1


.field private static final 'MERGE_STATUS' I = -2


.field private static final 'PENDING_STATUS' I = 0


.field public 'mDownloaded' J

.field public 'mTotalSize' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/init(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private init(I)V
aload 0
iload 1
i2l
putfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
aload 0
iload 1
i2l
putfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
return
.limit locals 2
.limit stack 3
.end method

.method private judgeStatus(I)Z
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mDownloaded J
iload 1
i2l
lcmp
ifne L0
aload 0
getfield com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/mTotalSize J
iload 1
i2l
lcmp
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public isClear()Z
aload 0
bipush -3
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/judgeStatus(I)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isFailed()Z
aload 0
iconst_m1
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/judgeStatus(I)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isMerging()Z
aload 0
bipush -2
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/judgeStatus(I)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isPending()Z
aload 0
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/judgeStatus(I)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setClearStatus()V
aload 0
bipush -3
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/init(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setFailedStatus()V
aload 0
iconst_m1
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/init(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setMergeStatus()V
aload 0
bipush -2
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/init(I)V
return
.limit locals 1
.limit stack 2
.end method
