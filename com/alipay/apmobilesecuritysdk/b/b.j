.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/b/b
.super java/lang/Object

.field private 'a' Ljava/io/File;

.field private 'b' Lcom/alipay/security/mobile/module/a/c/a;

.method public <init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/a/c/a;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
aload 0
aconst_null
putfield com/alipay/apmobilesecuritysdk/b/b/b Lcom/alipay/security/mobile/module/a/c/a;
aload 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
aload 0
aload 2
putfield com/alipay/apmobilesecuritysdk/b/b/b Lcom/alipay/security/mobile/module/a/c/a;
return
.limit locals 3
.limit stack 4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "type"
ldc "id"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "error"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method private a(Landroid/content/Context;)V
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 4
aload 4
ifnonnull L0
aconst_null
astore 4
L1:
aload 4
ifnull L2
aload 4
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L2
aload 4
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L2
iconst_1
istore 2
L3:
aload 1
invokestatic com/alipay/apmobilesecuritysdk/e/e/a(Landroid/content/Context;)Z
istore 3
iload 2
ifeq L4
iload 3
ifeq L4
new java/lang/Thread
dup
new com/alipay/apmobilesecuritysdk/b/c
dup
aload 0
invokespecial com/alipay/apmobilesecuritysdk/b/c/<init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L4:
return
L0:
aload 4
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 4
goto L1
L2:
iconst_0
istore 2
goto L3
.limit locals 5
.limit stack 5
.end method

.method private static synthetic a(Lcom/alipay/apmobilesecuritysdk/b/b;)V
aload 0
invokevirtual com/alipay/apmobilesecuritysdk/b/b/a()V
return
.limit locals 1
.limit stack 1
.end method

.method final a()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
iconst_0
istore 2
aload 0
monitorenter
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
astore 4
L1:
aload 4
ifnonnull L3
L13:
aload 0
monitorexit
return
L3:
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L13
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
invokevirtual java/io/File/isDirectory()Z
ifeq L13
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
invokevirtual java/io/File/list()[Ljava/lang/String;
arraylength
ifeq L13
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
invokevirtual java/io/File/list()[Ljava/lang/String;
astore 4
aload 4
arraylength
istore 3
L4:
iconst_0
istore 1
L14:
iload 1
iload 3
if_icmpge L7
L5:
aload 5
aload 4
iload 1
aaload
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 1
iconst_1
iadd
istore 1
goto L14
L7:
aload 5
invokestatic java/util/Collections/sort(Ljava/util/List;)V
aload 5
aload 5
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
aload 5
invokeinterface java/util/List/size()I 0
istore 1
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 6
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 6
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".log"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L15
aload 5
invokeinterface java/util/List/size()I 0
iconst_2
if_icmplt L13
aload 5
aload 5
invokeinterface java/util/List/size()I 0
iconst_2
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
L8:
iload 1
iconst_1
isub
istore 1
L9:
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aload 4
invokestatic com/alipay/security/mobile/module/commonutils/c/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/alipay/apmobilesecuritysdk/b/b/a(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/b Lcom/alipay/security/mobile/module/a/c/a;
aload 4
invokeinterface com/alipay/security/mobile/module/a/c/a/a(Ljava/lang/String;)Z 1
ifne L16
L10:
iload 1
iconst_1
isub
istore 1
L17:
iload 2
iload 1
if_icmpge L13
L11:
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
new java/io/File
dup
aload 0
getfield com/alipay/apmobilesecuritysdk/b/b/a Ljava/io/File;
aload 4
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/delete()Z
pop
L12:
iload 2
iconst_1
iadd
istore 2
goto L17
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
L16:
goto L17
L15:
goto L9
.limit locals 7
.limit stack 4
.end method
