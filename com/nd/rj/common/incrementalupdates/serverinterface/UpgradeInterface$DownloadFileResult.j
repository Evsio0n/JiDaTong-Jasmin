.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/VerifyObject
.inner class public static DownloadFileResult inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult outer com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface

.field private 'mFilePath' Ljava/lang/String;

.field private 'mIsFullPackage' Z

.method public <init>(ZLjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/mIsFullPackage Z
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/mFilePath Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public getFilePath()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/mFilePath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isFullPackage()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/mIsFullPackage Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/mFilePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
