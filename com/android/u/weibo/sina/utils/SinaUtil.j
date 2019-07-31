.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/utils/SinaUtil
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static date2Long(Ljava/util/Date;)J
aload 0
invokevirtual java/util/Date/getTime()J
ldc2_w 1000L
ldiv
lreturn
.limit locals 1
.limit stack 4
.end method

.method public static isNetAvailable(Landroid/content/Context;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 0
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
ifnull L1
aload 0
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
invokevirtual android/net/NetworkInfo/isAvailable()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.catch java/text/ParseException from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch java/text/ParseException from L6 to L2 using L2
aload 0
ifnull L7
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
L7:
aconst_null
areturn
L8:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 4
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/text/SimpleDateFormat
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new java/text/SimpleDateFormat
dup
aload 1
getstatic java/util/Locale/ENGLISH Ljava/util/Locale;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;Ljava/util/Locale;)V
astore 2
aload 2
ldc "GMT"
invokestatic java/util/TimeZone/getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
invokevirtual java/text/SimpleDateFormat/setTimeZone(Ljava/util/TimeZone;)V
aload 4
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 2
monitorenter
L1:
aload 2
aload 0
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
astore 0
aload 2
monitorexit
L3:
aload 0
areturn
L4:
astore 0
L5:
aload 2
monitorexit
L6:
aload 0
athrow
L2:
astore 0
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
areturn
.limit locals 5
.limit stack 4
.end method

.method public static sinaDate2Long(Ljava/lang/String;Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/util/Date
dup
aload 0
invokespecial java/util/Date/<init>(Ljava/lang/String;)V
invokevirtual java/util/Date/getTime()J
ldc2_w 1000L
ldiv
lstore 2
L1:
lload 2
lreturn
L2:
astore 4
aload 0
aload 1
invokestatic com/android/u/weibo/sina/utils/SinaUtil/parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
invokestatic com/android/u/weibo/sina/utils/SinaUtil/date2Long(Ljava/util/Date;)J
lreturn
.limit locals 5
.limit stack 4
.end method
