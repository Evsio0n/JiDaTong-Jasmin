.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/VerifyObject

.field private 'isCustomUrl' Z

.field private 'mAppId' I

.field private 'mAppName' Ljava/lang/String;

.field private 'mCurMd5' Ljava/lang/String;

.field private 'mCurVer' I

.field private 'mIsOuterNet' Z

.field private 'mProduct' Ljava/lang/String;

.field private 'mUrl' Ljava/lang/String;

.method public <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mIsOuterNet Z
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl Z
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppId I
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mProduct Ljava/lang/String;
aload 0
aload 3
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppName Ljava/lang/String;
aload 0
iload 4
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurVer I
aload 0
aload 5
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurMd5 Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mIsOuterNet Z
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl Z
aload 0
aload 6
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mUrl Ljava/lang/String;
return
.limit locals 7
.limit stack 2
.end method

.method public <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mIsOuterNet Z
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl Z
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppId I
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mProduct Ljava/lang/String;
aload 0
aload 3
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppName Ljava/lang/String;
aload 0
iload 4
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurVer I
aload 0
aload 5
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurMd5 Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl Z
aload 0
iload 6
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mIsOuterNet Z
return
.limit locals 7
.limit stack 2
.end method

.method public getAppId()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAppName()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurMd5()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurMd5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurVer()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurVer I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getProduct()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mProduct Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isCustomUrl()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isCustomUrl Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mProduct Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mAppName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOuterNet()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mIsOuterNet Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCurMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/mCurMd5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
