.bytecode 50.0
.class public synchronized com/ta/utdid2/device/Device
.super java/lang/Object

.field private 'deviceId' Ljava/lang/String;

.field private 'imei' Ljava/lang/String;

.field private 'imsi' Ljava/lang/String;

.field private 'mCheckSum' J

.field private 'mCreateTimestamp' J

.field private 'utdid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/ta/utdid2/device/Device/imei Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/device/Device/imsi Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/device/Device/deviceId Ljava/lang/String;
aload 0
ldc ""
putfield com/ta/utdid2/device/Device/utdid Ljava/lang/String;
aload 0
lconst_0
putfield com/ta/utdid2/device/Device/mCreateTimestamp J
aload 0
lconst_0
putfield com/ta/utdid2/device/Device/mCheckSum J
return
.limit locals 1
.limit stack 3
.end method

.method getCheckSum()J
aload 0
getfield com/ta/utdid2/device/Device/mCheckSum J
lreturn
.limit locals 1
.limit stack 2
.end method

.method getCreateTimestamp()J
aload 0
getfield com/ta/utdid2/device/Device/mCreateTimestamp J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getDeviceId()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/Device/deviceId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImei()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/Device/imei Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImsi()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/Device/imsi Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUtdid()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/Device/utdid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method setCheckSum(J)V
aload 0
lload 1
putfield com/ta/utdid2/device/Device/mCheckSum J
return
.limit locals 3
.limit stack 3
.end method

.method setCreateTimestamp(J)V
aload 0
lload 1
putfield com/ta/utdid2/device/Device/mCreateTimestamp J
return
.limit locals 3
.limit stack 3
.end method

.method setDeviceId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/ta/utdid2/device/Device/deviceId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method setImei(Ljava/lang/String;)V
aload 0
aload 1
putfield com/ta/utdid2/device/Device/imei Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method setImsi(Ljava/lang/String;)V
aload 0
aload 1
putfield com/ta/utdid2/device/Device/imsi Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method setUtdid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/ta/utdid2/device/Device/utdid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
