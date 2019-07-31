.bytecode 50.0
.class public synchronized com/ta/utdid2/device/UTDevice
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokestatic com/ta/utdid2/device/DeviceInfo/getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual com/ta/utdid2/device/Device/getUtdid()Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
L0:
ldc "ffffffffffffffffffffffff"
areturn
L1:
aload 0
invokevirtual com/ta/utdid2/device/Device/getUtdid()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
