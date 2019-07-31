.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/deviceinfo/b
.super java/lang/Object
.inner class static final synthetic inner com/alipay/security/mobile/module/deviceinfo/b$1
.inner class private final a inner com/alipay/security/mobile/module/deviceinfo/b$a outer com/alipay/security/mobile/module/deviceinfo/b

.field private static 'a' Lcom/alipay/security/mobile/module/deviceinfo/b;

.method static <clinit>()V
new com/alipay/security/mobile/module/deviceinfo/b
dup
invokespecial com/alipay/security/mobile/module/deviceinfo/b/<init>()V
putstatic com/alipay/security/mobile/module/deviceinfo/b/a Lcom/alipay/security/mobile/module/deviceinfo/b;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a()Lcom/alipay/security/mobile/module/deviceinfo/b;
getstatic com/alipay/security/mobile/module/deviceinfo/b/a Lcom/alipay/security/mobile/module/deviceinfo/b;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/lang/RuntimeException from L5 to L6 using L7
.catch java/lang/Exception from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch java/lang/RuntimeException from L10 to L11 using L7
.catch java/lang/Exception from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/lang/RuntimeException from L11 to L12 using L7
.catch java/lang/Exception from L11 to L12 using L8
.catch all from L11 to L12 using L9
.catch java/lang/RuntimeException from L13 to L14 using L7
.catch java/lang/Exception from L13 to L14 using L8
.catch all from L13 to L14 using L9
.catch java/lang/RuntimeException from L14 to L15 using L7
.catch java/lang/Exception from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch java/lang/RuntimeException from L16 to L17 using L7
.catch java/lang/Exception from L16 to L17 using L8
.catch all from L16 to L17 using L9
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokestatic com/alipay/security/mobile/module/deviceinfo/b/t(Landroid/content/Context;)F
fstore 3
aconst_null
astore 1
L0:
iload 2
invokestatic android/hardware/Camera/open(I)Landroid/hardware/Camera;
astore 6
L1:
aload 6
astore 1
L5:
aload 1
invokevirtual android/hardware/Camera/getParameters()Landroid/hardware/Camera$Parameters;
invokevirtual android/hardware/Camera$Parameters/getSupportedPreviewSizes()Ljava/util/List;
astore 6
aload 6
new com/alipay/security/mobile/module/deviceinfo/b$a
dup
aload 0
iconst_0
invokespecial com/alipay/security/mobile/module/deviceinfo/b$a/<init>(Lcom/alipay/security/mobile/module/deviceinfo/b;B)V
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
L6:
iconst_0
istore 4
L10:
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L11:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L13
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/hardware/Camera$Size
astore 8
aload 8
getfield android/hardware/Camera$Size/width I
sipush 600
if_icmplt L18
aload 8
getfield android/hardware/Camera$Size/width I
i2f
aload 8
getfield android/hardware/Camera$Size/height I
i2f
fdiv
fload 3
fsub
invokestatic java/lang/Math/abs(F)F
f2d
ldc2_w 0.03D
dcmpg
ifgt L19
L12:
iconst_1
istore 5
goto L20
L13:
iload 4
aload 6
invokeinterface java/util/List/size()I 0
if_icmpne L21
aload 6
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 4
L14:
aload 6
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/hardware/Camera$Size
astore 6
L15:
aload 6
ifnull L22
L16:
getstatic java/util/Locale/ENGLISH Ljava/util/Locale;
ldc "%2$d*%3$d"
iconst_3
anewarray java/lang/Object
dup
iconst_0
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 6
getfield android/hardware/Camera$Size/width I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 6
getfield android/hardware/Camera$Size/height I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 6
L17:
aload 1
ifnull L23
aload 1
invokevirtual android/hardware/Camera/release()V
L23:
aload 6
areturn
L2:
astore 6
L24:
aload 1
ifnull L25
aload 1
invokevirtual android/hardware/Camera/release()V
ldc ""
areturn
L3:
astore 1
aconst_null
astore 1
L26:
aload 1
ifnull L25
aload 1
invokevirtual android/hardware/Camera/release()V
ldc ""
areturn
L4:
astore 1
aconst_null
astore 7
aload 1
astore 6
L27:
aload 7
ifnull L28
aload 7
invokevirtual android/hardware/Camera/release()V
L28:
aload 6
athrow
L9:
astore 6
aload 1
astore 7
goto L27
L8:
astore 6
goto L26
L7:
astore 6
goto L24
L25:
ldc ""
areturn
L22:
ldc ""
astore 6
goto L17
L21:
goto L14
L20:
iload 5
ifne L13
L18:
iload 4
iconst_1
iadd
istore 4
goto L11
L19:
iconst_0
istore 5
goto L20
.limit locals 9
.limit stack 6
.end method

.method public static b()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L11 to L12 using L9
.catch all from L11 to L12 using L10
.catch java/io/IOException from L12 to L13 using L14
.catch java/io/IOException from L13 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
.catch java/io/IOException from L23 to L24 using L25
.catch java/io/IOException from L26 to L27 using L28
aconst_null
astore 2
ldc "0000000000000000"
astore 3
L0:
new java/io/InputStreamReader
dup
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
ldc "cat /proc/cpuinfo | grep Serial"
invokevirtual java/lang/Runtime/exec(Ljava/lang/String;)Ljava/lang/Process;
invokevirtual java/lang/Process/getInputStream()Ljava/io/InputStream;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
astore 1
L1:
new java/io/LineNumberReader
dup
aload 1
invokespecial java/io/LineNumberReader/<init>(Ljava/io/Reader;)V
astore 4
L4:
iconst_1
istore 0
L29:
aload 3
astore 2
iload 0
bipush 100
if_icmpge L12
L7:
aload 4
invokevirtual java/io/LineNumberReader/readLine()Ljava/lang/String;
astore 5
L8:
aload 3
astore 2
aload 5
ifnull L12
L11:
aload 5
ldc "Serial"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iflt L30
aload 5
aload 5
ldc ":"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
aload 5
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
L12:
aload 4
invokevirtual java/io/LineNumberReader/close()V
L13:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L15:
aload 2
areturn
L30:
iload 0
iconst_1
iadd
istore 0
goto L29
L2:
astore 1
aconst_null
astore 4
aload 2
astore 1
aload 4
astore 2
L31:
aload 2
ifnull L18
L17:
aload 2
invokevirtual java/io/LineNumberReader/close()V
L18:
aload 3
astore 2
aload 1
ifnull L15
L20:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L21:
ldc "0000000000000000"
areturn
L22:
astore 1
ldc "0000000000000000"
areturn
L3:
astore 2
aconst_null
astore 3
aconst_null
astore 1
L32:
aload 3
ifnull L24
L23:
aload 3
invokevirtual java/io/LineNumberReader/close()V
L24:
aload 1
ifnull L27
L26:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L27:
aload 2
athrow
L14:
astore 3
goto L13
L16:
astore 1
aload 2
areturn
L19:
astore 2
goto L18
L25:
astore 3
goto L24
L28:
astore 1
goto L27
L6:
astore 2
aconst_null
astore 3
goto L32
L10:
astore 2
aload 4
astore 3
goto L32
L5:
astore 2
aconst_null
astore 2
goto L31
L9:
astore 2
aload 4
astore 2
goto L31
.limit locals 6
.limit stack 4
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
ldc ""
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
invokevirtual android/telephony/TelephonyManager/getLine1Number()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
areturn
L2:
astore 0
ldc ""
areturn
L6:
ldc ""
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method public static d()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/deviceinfo/b/l()Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L0
aload 0
areturn
L0:
invokestatic com/alipay/security/mobile/module/deviceinfo/b/m()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
aload 0
ifnull L10
L0:
aload 0
ldc "sensor"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/hardware/SensorManager
astore 0
L1:
aload 0
ifnull L11
L3:
aload 0
iconst_m1
invokevirtual android/hardware/SensorManager/getSensorList(I)Ljava/util/List;
astore 1
L4:
aload 1
ifnull L11
L5:
aload 1
invokeinterface java/util/List/size()I 0
ifle L11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/hardware/Sensor
astore 2
aload 0
aload 2
invokevirtual android/hardware/Sensor/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual android/hardware/Sensor/getVersion()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual android/hardware/Sensor/getVendor()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
goto L6
L8:
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/d(Ljava/lang/String;)Ljava/lang/String;
astore 0
L9:
aload 0
areturn
L11:
aconst_null
astore 0
goto L9
L2:
astore 0
L10:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public static e()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/io/IOException from L12 to L13 using L14
.catch java/io/IOException from L13 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
.catch java/io/IOException from L23 to L24 using L25
.catch java/io/IOException from L26 to L27 using L28
aconst_null
astore 5
lconst_0
lstore 3
L0:
new java/io/FileReader
dup
ldc "/proc/meminfo"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
astore 6
L1:
new java/io/BufferedReader
dup
aload 6
sipush 8192
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 7
L4:
aload 7
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 5
L7:
lload 3
lstore 1
aload 5
ifnull L12
L10:
aload 5
ldc "\\s+"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 0
L11:
iload 0
i2l
lstore 1
L12:
aload 6
invokevirtual java/io/FileReader/close()V
L13:
aload 7
invokevirtual java/io/BufferedReader/close()V
L15:
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
areturn
L2:
astore 6
aconst_null
astore 6
L29:
aload 6
ifnull L18
L17:
aload 6
invokevirtual java/io/FileReader/close()V
L18:
lload 3
lstore 1
aload 5
ifnull L15
L20:
aload 5
invokevirtual java/io/BufferedReader/close()V
L21:
lload 3
lstore 1
goto L15
L22:
astore 5
lload 3
lstore 1
goto L15
L3:
astore 5
aconst_null
astore 8
aconst_null
astore 6
L30:
aload 8
ifnull L24
L23:
aload 8
invokevirtual java/io/FileReader/close()V
L24:
aload 6
ifnull L27
L26:
aload 6
invokevirtual java/io/BufferedReader/close()V
L27:
aload 5
athrow
L14:
astore 5
goto L13
L16:
astore 5
goto L15
L19:
astore 6
goto L18
L25:
astore 7
goto L24
L28:
astore 6
goto L27
L6:
astore 5
aconst_null
astore 7
aload 6
astore 8
aload 7
astore 6
goto L30
L9:
astore 5
aload 6
astore 8
aload 7
astore 6
goto L30
L5:
astore 7
goto L29
L8:
astore 5
aload 7
astore 5
goto L29
.limit locals 9
.limit stack 4
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield android/util/DisplayMetrics/widthPixels I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/util/DisplayMetrics/heightPixels I
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static f()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
lconst_0
lstore 1
L0:
new android/os/StatFs
dup
invokestatic android/os/Environment/getDataDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial android/os/StatFs/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual android/os/StatFs/getBlockSize()I
i2l
lstore 3
aload 5
invokevirtual android/os/StatFs/getBlockCount()I
istore 0
L1:
iload 0
i2l
lload 3
lmul
lstore 1
L3:
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
areturn
L2:
astore 5
goto L3
.limit locals 6
.limit stack 4
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield android/util/DisplayMetrics/widthPixels I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static g()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
lconst_0
lstore 3
lload 3
lstore 1
L0:
ldc "mounted"
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new android/os/StatFs
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial android/os/StatFs/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual android/os/StatFs/getBlockSize()I
i2l
lstore 1
aload 5
invokevirtual android/os/StatFs/getBlockCount()I
istore 0
L1:
iload 0
i2l
lload 1
lmul
lstore 1
L3:
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
areturn
L2:
astore 5
lload 3
lstore 1
goto L3
.limit locals 6
.limit stack 4
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield android/util/DisplayMetrics/heightPixels I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static h()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
invokestatic android/bluetooth/BluetoothAdapter/getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
astore 0
L1:
aload 0
ifnull L5
L3:
aload 0
invokevirtual android/bluetooth/BluetoothAdapter/isEnabled()Z
ifne L5
L4:
ldc ""
areturn
L5:
aload 0
invokevirtual android/bluetooth/BluetoothAdapter/getAddress()Ljava/lang/String;
astore 0
L6:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
invokevirtual android/net/wifi/WifiInfo/getMacAddress()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public static i()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "android.os.SystemProperties"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 0
aload 0
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 1
aload 0
ldc "get"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/String
aastore
dup
iconst_1
ldc java/lang/String
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 1
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "gsm.version.baseband"
aastore
dup
iconst_1
ldc "no message"
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 6
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getSimSerialNumber()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method public static j()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic android/os/Build/SERIAL Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "android_id"
invokestatic android/provider/Settings$Secure/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method private static k()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L11 to L12 using L9
.catch all from L11 to L12 using L10
.catch java/io/IOException from L12 to L13 using L14
.catch java/io/IOException from L13 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
.catch java/io/IOException from L23 to L24 using L25
.catch java/io/IOException from L26 to L27 using L28
aconst_null
astore 2
ldc "-1"
astore 3
L0:
new java/io/InputStreamReader
dup
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
ldc "cat /proc/cpuinfo | grep Hardware"
invokevirtual java/lang/Runtime/exec(Ljava/lang/String;)Ljava/lang/Process;
invokevirtual java/lang/Process/getInputStream()Ljava/io/InputStream;
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
astore 1
L1:
new java/io/LineNumberReader
dup
aload 1
invokespecial java/io/LineNumberReader/<init>(Ljava/io/Reader;)V
astore 4
L4:
iconst_1
istore 0
L29:
aload 3
astore 2
iload 0
bipush 100
if_icmpge L12
L7:
aload 4
invokevirtual java/io/LineNumberReader/readLine()Ljava/lang/String;
astore 5
L8:
aload 3
astore 2
aload 5
ifnull L12
L11:
aload 5
ldc "Hardware"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iflt L30
aload 5
aload 5
ldc ":"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
aload 5
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
L12:
aload 4
invokevirtual java/io/LineNumberReader/close()V
L13:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L15:
aload 2
areturn
L30:
iload 0
iconst_1
iadd
istore 0
goto L29
L2:
astore 1
aconst_null
astore 4
aload 2
astore 1
aload 4
astore 2
L31:
aload 2
ifnull L18
L17:
aload 2
invokevirtual java/io/LineNumberReader/close()V
L18:
aload 3
astore 2
aload 1
ifnull L15
L20:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L21:
ldc "-1"
areturn
L22:
astore 1
ldc "-1"
areturn
L3:
astore 2
aconst_null
astore 3
aconst_null
astore 1
L32:
aload 3
ifnull L24
L23:
aload 3
invokevirtual java/io/LineNumberReader/close()V
L24:
aload 1
ifnull L27
L26:
aload 1
invokevirtual java/io/InputStreamReader/close()V
L27:
aload 2
athrow
L14:
astore 3
goto L13
L16:
astore 1
aload 2
areturn
L19:
astore 2
goto L18
L25:
astore 3
goto L24
L28:
astore 1
goto L27
L6:
astore 2
aconst_null
astore 3
goto L32
L10:
astore 2
aload 4
astore 3
goto L32
L5:
astore 2
aconst_null
astore 2
goto L31
L9:
astore 2
aload 4
astore 2
goto L31
.limit locals 6
.limit stack 4
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
ldc "phone"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
astore 0
L1:
aload 0
ifnull L5
L3:
aload 0
invokevirtual android/telephony/TelephonyManager/getNetworkType()I
istore 1
L4:
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
L2:
astore 0
L5:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method private static l()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L7 to L10 using L11
.catch java/io/IOException from L10 to L12 using L13
.catch java/io/IOException from L14 to L15 using L16
.catch java/io/IOException from L15 to L17 using L18
.catch java/io/IOException from L19 to L20 using L21
.catch java/io/IOException from L20 to L22 using L23
.catch java/io/IOException from L24 to L25 using L26
.catch java/io/IOException from L25 to L27 using L28
L0:
new java/io/FileReader
dup
ldc "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
astore 2
L1:
new java/io/BufferedReader
dup
aload 2
sipush 8192
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 1
L4:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 0
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L14
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 0
L7:
aload 1
invokevirtual java/io/BufferedReader/close()V
L10:
aload 2
invokevirtual java/io/FileReader/close()V
L12:
aload 0
areturn
L14:
aload 1
invokevirtual java/io/BufferedReader/close()V
L15:
aload 2
invokevirtual java/io/FileReader/close()V
L17:
aconst_null
areturn
L18:
astore 0
aconst_null
areturn
L2:
astore 0
aconst_null
astore 0
aconst_null
astore 2
L19:
aload 0
invokevirtual java/io/BufferedReader/close()V
L20:
aload 2
invokevirtual java/io/FileReader/close()V
L22:
aconst_null
areturn
L23:
astore 0
aconst_null
areturn
L3:
astore 0
aconst_null
astore 2
aconst_null
astore 1
L24:
aload 1
invokevirtual java/io/BufferedReader/close()V
L25:
aload 2
invokevirtual java/io/FileReader/close()V
L27:
aload 0
athrow
L11:
astore 1
goto L10
L13:
astore 1
aload 0
areturn
L16:
astore 0
goto L15
L21:
astore 0
goto L20
L26:
astore 1
goto L25
L28:
astore 1
goto L27
L6:
astore 0
aconst_null
astore 1
goto L24
L9:
astore 0
goto L24
L5:
astore 0
aconst_null
astore 0
goto L19
L8:
astore 0
aload 1
astore 0
goto L19
.limit locals 3
.limit stack 4
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
astore 0
aload 0
invokevirtual android/net/wifi/WifiManager/isWifiEnabled()Z
ifeq L3
aload 0
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
invokevirtual android/net/wifi/WifiInfo/getBSSID()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
L3:
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method private static m()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/io/IOException from L12 to L13 using L8
.catch all from L12 to L13 using L9
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/IOException from L14 to L16 using L17
.catch java/io/IOException from L18 to L19 using L20
.catch java/io/IOException from L21 to L22 using L23
.catch java/io/IOException from L24 to L25 using L26
.catch java/io/IOException from L27 to L28 using L29
aconst_null
astore 3
aconst_null
astore 4
L0:
new java/io/FileReader
dup
ldc "/proc/cpuinfo"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
astore 2
L1:
new java/io/BufferedReader
dup
aload 2
sipush 8192
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 1
L4:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 5
L7:
aload 4
astore 0
aload 5
ifnull L13
L10:
aload 5
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L4
aload 5
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
L11:
aload 0
ifnull L4
L12:
aload 0
arraylength
iconst_1
if_icmple L4
aload 0
iconst_0
aaload
ldc "BogoMIPS"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
iconst_1
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 0
L13:
aload 2
invokevirtual java/io/FileReader/close()V
L14:
aload 1
invokevirtual java/io/BufferedReader/close()V
L16:
aload 0
astore 1
L30:
aload 1
areturn
L2:
astore 0
aconst_null
astore 0
aconst_null
astore 2
L31:
aload 2
ifnull L19
L18:
aload 2
invokevirtual java/io/FileReader/close()V
L19:
aload 3
astore 1
aload 0
ifnull L30
L21:
aload 0
invokevirtual java/io/BufferedReader/close()V
L22:
aconst_null
areturn
L23:
astore 0
aconst_null
areturn
L3:
astore 0
aconst_null
astore 2
aconst_null
astore 1
L32:
aload 2
ifnull L25
L24:
aload 2
invokevirtual java/io/FileReader/close()V
L25:
aload 1
ifnull L28
L27:
aload 1
invokevirtual java/io/BufferedReader/close()V
L28:
aload 0
athrow
L15:
astore 2
goto L14
L17:
astore 1
aload 0
areturn
L20:
astore 1
goto L19
L26:
astore 2
goto L25
L29:
astore 1
goto L28
L6:
astore 0
aconst_null
astore 1
goto L32
L9:
astore 0
goto L32
L5:
astore 0
aconst_null
astore 0
goto L31
L8:
astore 0
aload 1
astore 0
goto L31
.limit locals 6
.limit stack 4
.end method

.method public static m(Landroid/content/Context;)Ljava/util/Map;
.signature "(Landroid/content/Context;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L4 to L5 using L2
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
iconst_0
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
astore 0
L1:
aload 0
ifnull L6
L3:
aload 0
invokeinterface java/util/List/size()I 0
ifle L6
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L4:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/PackageInfo
astore 2
aload 1
aload 2
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
aload 2
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/uid I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L5:
goto L4
L2:
astore 0
L6:
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private static n()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/io/IOException from L12 to L13 using L14
.catch java/io/IOException from L13 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L18 to L20 using L21
.catch java/io/IOException from L22 to L23 using L24
.catch java/io/IOException from L25 to L26 using L27
.catch java/io/IOException from L28 to L29 using L30
.catch java/io/IOException from L31 to L32 using L33
aconst_null
astore 3
L0:
new java/io/FileReader
dup
ldc "/proc/cpuinfo"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
astore 2
L1:
new java/io/BufferedReader
dup
aload 2
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 1
L4:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
ldc ":\\s+"
iconst_2
invokevirtual java/lang/String/split(Ljava/lang/String;I)[Ljava/lang/String;
astore 0
L7:
aload 0
ifnull L17
L10:
aload 0
arraylength
iconst_1
if_icmple L17
L11:
aload 0
iconst_1
aaload
astore 0
L12:
aload 2
invokevirtual java/io/FileReader/close()V
L13:
aload 1
invokevirtual java/io/BufferedReader/close()V
L15:
aload 0
astore 1
L34:
aload 1
areturn
L17:
aload 2
invokevirtual java/io/FileReader/close()V
L18:
aload 1
invokevirtual java/io/BufferedReader/close()V
L20:
aconst_null
areturn
L21:
astore 0
aconst_null
areturn
L2:
astore 0
aconst_null
astore 0
aconst_null
astore 2
L35:
aload 2
ifnull L23
L22:
aload 2
invokevirtual java/io/FileReader/close()V
L23:
aload 3
astore 1
aload 0
ifnull L34
L25:
aload 0
invokevirtual java/io/BufferedReader/close()V
L26:
aconst_null
areturn
L27:
astore 0
aconst_null
areturn
L3:
astore 0
aconst_null
astore 2
aconst_null
astore 1
L36:
aload 2
ifnull L29
L28:
aload 2
invokevirtual java/io/FileReader/close()V
L29:
aload 1
ifnull L32
L31:
aload 1
invokevirtual java/io/BufferedReader/close()V
L32:
aload 0
athrow
L14:
astore 2
goto L13
L16:
astore 1
aload 0
areturn
L19:
astore 0
goto L18
L24:
astore 1
goto L23
L30:
astore 2
goto L29
L33:
astore 1
goto L32
L6:
astore 0
aconst_null
astore 1
goto L36
L9:
astore 0
goto L36
L5:
astore 0
aconst_null
astore 0
goto L35
L8:
astore 0
aload 1
astore 0
goto L35
.limit locals 4
.limit stack 3
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
invokevirtual android/telephony/TelephonyManager/getSimOperator()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
invokevirtual android/telephony/TelephonyManager/getSimOperatorName()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method private static o()Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
invokestatic android/bluetooth/BluetoothAdapter/getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
astore 1
L1:
aload 1
ifnull L5
L3:
aload 1
invokevirtual android/bluetooth/BluetoothAdapter/isEnabled()Z
istore 0
L4:
iload 0
ifeq L5
iconst_1
ireturn
L2:
astore 1
L5:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method private static p()Ljava/lang/String;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
.catch all from L1 to L3 using L5
.catch java/io/IOException from L3 to L6 using L7
.catch all from L3 to L6 using L8
.catch java/io/IOException from L9 to L10 using L7
.catch all from L9 to L10 using L8
.catch java/io/IOException from L11 to L12 using L13
.catch java/lang/Exception from L14 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
ldc ""
astore 2
ldc ""
astore 0
L0:
new java/io/FileInputStream
dup
ldc "/proc/version"
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
astore 4
L1:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 4
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
sipush 8192
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 1
L3:
aload 1
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L6:
aload 3
ifnull L11
L9:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L10:
aload 3
astore 0
goto L3
L11:
aload 1
invokevirtual java/io/BufferedReader/close()V
aload 4
invokevirtual java/io/InputStream/close()V
L12:
aload 2
astore 1
L14:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/b(Ljava/lang/String;)Z
ifeq L15
aload 0
aload 0
ldc "version "
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
bipush 8
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
aload 0
iconst_0
aload 0
ldc " "
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L15:
aload 1
areturn
L4:
astore 1
aconst_null
astore 1
L17:
aload 1
invokevirtual java/io/BufferedReader/close()V
aload 4
invokevirtual java/io/InputStream/close()V
L18:
goto L12
L19:
astore 1
goto L12
L5:
astore 0
aconst_null
astore 1
L20:
aload 1
invokevirtual java/io/BufferedReader/close()V
aload 4
invokevirtual java/io/InputStream/close()V
L21:
aload 0
athrow
L16:
astore 0
ldc ""
areturn
L22:
astore 1
goto L21
L8:
astore 0
goto L20
L7:
astore 3
goto L17
L13:
astore 1
goto L12
L2:
astore 0
ldc ""
areturn
.limit locals 5
.limit stack 5
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
invokevirtual android/telephony/TelephonyManager/getVoiceMailNumber()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method private static q(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aconst_null
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
invokevirtual android/telephony/TelephonyManager/getVoiceMailAlphaTag()Ljava/lang/String;
astore 0
L4:
aload 0
astore 1
L5:
aload 1
areturn
L2:
astore 0
aconst_null
areturn
L6:
aconst_null
astore 0
goto L4
.limit locals 2
.limit stack 2
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield android/util/DisplayMetrics/densityDpi I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method private s(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokestatic com/alipay/security/mobile/module/deviceinfo/b/t(Landroid/content/Context;)F
pop
iconst_m1
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
iload 3
istore 2
L0:
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
bipush 8
if_icmple L1
invokestatic android/hardware/Camera/getNumberOfCameras()I
istore 2
L1:
iconst_0
istore 3
L3:
iload 3
iload 2
if_icmpge L4
iload 3
ifne L5
getstatic java/util/Locale/ENGLISH Ljava/util/Locale;
ldc "%1$d:%2$s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
aload 1
iload 3
invokespecial com/alipay/security/mobile/module/deviceinfo/b/a(Landroid/content/Context;I)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
L6:
aload 5
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L5:
getstatic java/util/Locale/ENGLISH Ljava/util/Locale;
ldc "#%1$d:%2$s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
aload 1
iload 3
invokespecial com/alipay/security/mobile/module/deviceinfo/b/a(Landroid/content/Context;I)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 4
goto L6
L4:
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
astore 4
iload 3
istore 2
goto L1
.limit locals 6
.limit stack 8
.end method

.method private static t(Landroid/content/Context;)F
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 0
new android/graphics/Point
dup
aload 0
getfield android/util/DisplayMetrics/widthPixels I
aload 0
getfield android/util/DisplayMetrics/heightPixels I
invokespecial android/graphics/Point/<init>(II)V
astore 0
aload 0
getfield android/graphics/Point/y I
i2f
aload 0
getfield android/graphics/Point/x I
i2f
fdiv
freturn
.limit locals 1
.limit stack 4
.end method

.method public final c()Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
ldc "/sys/devices/system/cpu/"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
new com/alipay/security/mobile/module/deviceinfo/c
dup
aload 0
invokespecial com/alipay/security/mobile/module/deviceinfo/c/<init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V
invokevirtual java/io/File/listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
arraylength
istore 1
L1:
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
L2:
astore 2
ldc "1"
areturn
.limit locals 3
.limit stack 4
.end method
