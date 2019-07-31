.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/PhoneInfoUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
astore 2
aload 2
astore 1
aload 0
ifnull L5
L0:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
astore 0
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L7
invokestatic com/ta/utdid2/android/utils/PhoneInfoUtils/getUniqueID()Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
aload 2
astore 1
goto L5
L6:
aconst_null
astore 0
goto L4
.limit locals 3
.limit stack 2
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
astore 2
aload 2
astore 1
aload 0
ifnull L5
L0:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokevirtual android/telephony/TelephonyManager/getSubscriberId()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
astore 0
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L7
invokestatic com/ta/utdid2/android/utils/PhoneInfoUtils/getUniqueID()Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
aload 2
astore 1
goto L5
L6:
aconst_null
astore 0
goto L4
.limit locals 3
.limit stack 2
.end method

.method public static final getUniqueID()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
l2i
istore 0
invokestatic java/lang/System/nanoTime()J
l2i
istore 1
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
invokevirtual java/util/Random/nextInt()I
istore 2
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
invokevirtual java/util/Random/nextInt()I
istore 3
iload 0
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 4
iload 1
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 5
iload 2
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 6
iload 3
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 7
bipush 16
newarray byte
astore 8
aload 4
iconst_0
aload 8
iconst_0
iconst_4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 5
iconst_0
aload 8
iconst_4
iconst_4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 6
iconst_0
aload 8
bipush 8
iconst_4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 7
iconst_0
aload 8
bipush 12
iconst_4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 8
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
areturn
.limit locals 9
.limit stack 5
.end method
