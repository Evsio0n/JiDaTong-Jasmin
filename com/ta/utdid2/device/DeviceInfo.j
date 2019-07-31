.bytecode 50.0
.class public synchronized com/ta/utdid2/device/DeviceInfo
.super java/lang/Object

.field static final 'CREATE_DEVICE_METADATA_LOCK' Ljava/lang/Object;

.field static 'HMAC_KEY' Ljava/lang/String;

.field static final 'UTDID_VERSION_CODE' B = 1


.field private static 'mDevice' Lcom/ta/utdid2/device/Device;

.method static <clinit>()V
aconst_null
putstatic com/ta/utdid2/device/DeviceInfo/mDevice Lcom/ta/utdid2/device/Device;
ldc "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"
putstatic com/ta/utdid2/device/DeviceInfo/HMAC_KEY Ljava/lang/String;
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/ta/utdid2/device/DeviceInfo/CREATE_DEVICE_METADATA_LOCK Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static _initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
ifnull L4
new com/ta/utdid2/device/Device
dup
invokespecial com/ta/utdid2/device/Device/<init>()V
pop
getstatic com/ta/utdid2/device/DeviceInfo/CREATE_DEVICE_METADATA_LOCK Ljava/lang/Object;
astore 4
aload 4
monitorenter
L0:
aload 0
invokestatic com/ta/utdid2/device/UTUtdid/instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
invokevirtual com/ta/utdid2/device/UTUtdid/getValue()Ljava/lang/String;
astore 3
aload 3
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L5
aload 3
ldc "\n"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 3
iconst_0
aload 3
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L1:
new com/ta/utdid2/device/Device
dup
invokespecial com/ta/utdid2/device/Device/<init>()V
astore 5
invokestatic java/lang/System/currentTimeMillis()J
lstore 1
aload 0
invokestatic com/ta/utdid2/android/utils/PhoneInfoUtils/getImei(Landroid/content/Context;)Ljava/lang/String;
astore 6
aload 0
invokestatic com/ta/utdid2/android/utils/PhoneInfoUtils/getImsi(Landroid/content/Context;)Ljava/lang/String;
astore 0
aload 5
aload 6
invokevirtual com/ta/utdid2/device/Device/setDeviceId(Ljava/lang/String;)V
aload 5
aload 6
invokevirtual com/ta/utdid2/device/Device/setImei(Ljava/lang/String;)V
aload 5
lload 1
invokevirtual com/ta/utdid2/device/Device/setCreateTimestamp(J)V
aload 5
aload 0
invokevirtual com/ta/utdid2/device/Device/setImsi(Ljava/lang/String;)V
aload 5
aload 3
invokevirtual com/ta/utdid2/device/Device/setUtdid(Ljava/lang/String;)V
aload 5
aload 5
invokestatic com/ta/utdid2/device/DeviceInfo/getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
invokevirtual com/ta/utdid2/device/Device/setCheckSum(J)V
aload 4
monitorexit
L3:
aload 5
areturn
L5:
aload 4
monitorexit
L4:
aconst_null
areturn
L2:
astore 0
aload 4
monitorexit
aload 0
athrow
L6:
goto L1
.limit locals 7
.limit stack 4
.end method

.method public static getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/ta/utdid2/device/DeviceInfo
monitorenter
L0:
getstatic com/ta/utdid2/device/DeviceInfo/mDevice Lcom/ta/utdid2/device/Device;
ifnull L5
getstatic com/ta/utdid2/device/DeviceInfo/mDevice Lcom/ta/utdid2/device/Device;
astore 0
L1:
ldc com/ta/utdid2/device/DeviceInfo
monitorexit
aload 0
areturn
L5:
aload 0
ifnull L6
L3:
aload 0
invokestatic com/ta/utdid2/device/DeviceInfo/_initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
astore 0
aload 0
putstatic com/ta/utdid2/device/DeviceInfo/mDevice Lcom/ta/utdid2/device/Device;
L4:
goto L1
L2:
astore 0
ldc com/ta/utdid2/device/DeviceInfo
monitorexit
aload 0
athrow
L6:
aconst_null
astore 0
goto L1
.limit locals 1
.limit stack 1
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
aload 0
ifnull L0
ldc "%s%s%s%s%s"
iconst_5
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/ta/utdid2/device/Device/getUtdid()Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/ta/utdid2/device/Device/getDeviceId()Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/ta/utdid2/device/Device/getCreateTimestamp()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_3
aload 0
invokevirtual com/ta/utdid2/device/Device/getImsi()Ljava/lang/String;
aastore
dup
iconst_4
aload 0
invokevirtual com/ta/utdid2/device/Device/getImei()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 0
aload 0
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
new java/util/zip/Adler32
dup
invokespecial java/util/zip/Adler32/<init>()V
astore 1
aload 1
invokevirtual java/util/zip/Adler32/reset()V
aload 1
aload 0
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/util/zip/Adler32/update([B)V
aload 1
invokevirtual java/util/zip/Adler32/getValue()J
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 6
.end method
