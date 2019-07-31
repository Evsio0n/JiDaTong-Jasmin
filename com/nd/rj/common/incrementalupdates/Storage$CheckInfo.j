.bytecode 50.0
.class public final synchronized com/nd/rj/common/incrementalupdates/Storage$CheckInfo
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/serverinterface/VerifyObject
.inner class public static final CheckInfo inner com/nd/rj/common/incrementalupdates/Storage$CheckInfo outer com/nd/rj/common/incrementalupdates/Storage

.field public 'mCheckTime' J

.field public 'mVersionCode' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
iflt L0
aload 0
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mCheckTime J
lconst_0
lcmp
ifge L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method
