.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/IDCard
.super java/lang/Object

.field private static '_areaCode' [Ljava/lang/String;

.field private static 'ai' [I

.field private static 'areaCodeMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field static final 'vi' [I

.field static final 'wi' [I

.method static <clinit>()V
iconst_0
istore 0
bipush 18
newarray int
dup
iconst_0
bipush 7
iastore
dup
iconst_1
bipush 9
iastore
dup
iconst_2
bipush 10
iastore
dup
iconst_3
iconst_5
iastore
dup
iconst_4
bipush 8
iastore
dup
iconst_5
iconst_4
iastore
dup
bipush 6
iconst_2
iastore
dup
bipush 7
iconst_1
iastore
dup
bipush 8
bipush 6
iastore
dup
bipush 9
iconst_3
iastore
dup
bipush 10
bipush 7
iastore
dup
bipush 11
bipush 9
iastore
dup
bipush 12
bipush 10
iastore
dup
bipush 13
iconst_5
iastore
dup
bipush 14
bipush 8
iastore
dup
bipush 15
iconst_4
iastore
dup
bipush 16
iconst_2
iastore
dup
bipush 17
iconst_1
iastore
putstatic com/nd/android/u/cloud/helper/IDCard/wi [I
bipush 11
newarray int
dup
iconst_0
iconst_1
iastore
dup
iconst_1
iconst_0
iastore
dup
iconst_2
bipush 88
iastore
dup
iconst_3
bipush 9
iastore
dup
iconst_4
bipush 8
iastore
dup
iconst_5
bipush 7
iastore
dup
bipush 6
bipush 6
iastore
dup
bipush 7
iconst_5
iastore
dup
bipush 8
iconst_4
iastore
dup
bipush 9
iconst_3
iastore
dup
bipush 10
iconst_2
iastore
putstatic com/nd/android/u/cloud/helper/IDCard/vi [I
bipush 18
newarray int
putstatic com/nd/android/u/cloud/helper/IDCard/ai [I
bipush 35
anewarray java/lang/String
dup
iconst_0
ldc "11"
aastore
dup
iconst_1
ldc "12"
aastore
dup
iconst_2
ldc "13"
aastore
dup
iconst_3
ldc "14"
aastore
dup
iconst_4
ldc "15"
aastore
dup
iconst_5
ldc "21"
aastore
dup
bipush 6
ldc "22"
aastore
dup
bipush 7
ldc "23"
aastore
dup
bipush 8
ldc "31"
aastore
dup
bipush 9
ldc "32"
aastore
dup
bipush 10
ldc "33"
aastore
dup
bipush 11
ldc "34"
aastore
dup
bipush 12
ldc "35"
aastore
dup
bipush 13
ldc "36"
aastore
dup
bipush 14
ldc "37"
aastore
dup
bipush 15
ldc "41"
aastore
dup
bipush 16
ldc "42"
aastore
dup
bipush 17
ldc "43"
aastore
dup
bipush 18
ldc "44"
aastore
dup
bipush 19
ldc "45"
aastore
dup
bipush 20
ldc "46"
aastore
dup
bipush 21
ldc "50"
aastore
dup
bipush 22
ldc "51"
aastore
dup
bipush 23
ldc "52"
aastore
dup
bipush 24
ldc "53"
aastore
dup
bipush 25
ldc "54"
aastore
dup
bipush 26
ldc "61"
aastore
dup
bipush 27
ldc "62"
aastore
dup
bipush 28
ldc "63"
aastore
dup
bipush 29
ldc "64"
aastore
dup
bipush 30
ldc "65"
aastore
dup
bipush 31
ldc "71"
aastore
dup
bipush 32
ldc "81"
aastore
dup
bipush 33
ldc "82"
aastore
dup
bipush 34
ldc "91"
aastore
putstatic com/nd/android/u/cloud/helper/IDCard/_areaCode [Ljava/lang/String;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/cloud/helper/IDCard/areaCodeMap Ljava/util/HashMap;
getstatic com/nd/android/u/cloud/helper/IDCard/_areaCode [Ljava/lang/String;
astore 2
aload 2
arraylength
istore 1
L0:
iload 0
iload 1
if_icmpge L1
aload 2
iload 0
aaload
astore 3
getstatic com/nd/android/u/cloud/helper/IDCard/areaCodeMap Ljava/util/HashMap;
aload 3
aconst_null
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static containsAllNumber(Ljava/lang/String;)Z
iconst_0
istore 2
iload 2
istore 1
aload 0
invokevirtual java/lang/String/length()I
bipush 18
if_icmpne L0
iload 2
istore 1
aload 0
iconst_0
bipush 17
invokevirtual java/lang/String/subSequence(II)Ljava/lang/CharSequence;
invokestatic android/text/TextUtils/isDigitsOnly(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 3
.end method

.method private static getVerify(Ljava/lang/String;)Ljava/lang/String;
iconst_0
istore 1
aload 0
astore 3
aload 0
invokevirtual java/lang/String/length()I
bipush 18
if_icmpne L0
aload 0
iconst_0
bipush 17
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L0:
aload 3
invokevirtual java/lang/String/length()I
bipush 17
if_icmpne L1
iconst_0
istore 2
iconst_0
istore 1
L2:
iload 1
bipush 17
if_icmpge L3
aload 3
iload 1
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
getstatic com/nd/android/u/cloud/helper/IDCard/ai [I
iload 1
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iastore
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
iconst_0
istore 1
L4:
iload 1
bipush 17
if_icmpge L5
iload 2
getstatic com/nd/android/u/cloud/helper/IDCard/wi [I
iload 1
iaload
getstatic com/nd/android/u/cloud/helper/IDCard/ai [I
iload 1
iaload
imul
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L4
L5:
iload 2
bipush 11
irem
istore 1
L1:
iload 1
iconst_2
if_icmpne L6
ldc "X"
areturn
L6:
getstatic com/nd/android/u/cloud/helper/IDCard/vi [I
iload 1
iaload
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static verify(Ljava/lang/String;)Z
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/verifyLength(Ljava/lang/String;)Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/containsAllNumber(Ljava/lang/String;)Z
ifeq L1
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/verifyAreaCode(Ljava/lang/String;)Z
ifeq L1
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/verifyBirthdayCode(Ljava/lang/String;)Z
ifeq L1
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/verifyMOD(Ljava/lang/String;)Z
ifeq L1
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static verifyAreaCode(Ljava/lang/String;)Z
iconst_0
istore 1
aload 0
invokevirtual java/lang/String/length()I
bipush 18
if_icmpne L0
aload 0
iconst_0
iconst_2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
getstatic com/nd/android/u/cloud/helper/IDCard/areaCodeMap Ljava/util/HashMap;
aload 0
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method private static verifyBirthdayCode(Ljava/lang/String;)Z
.catch java/text/ParseException from L0 to L1 using L2
iconst_0
istore 1
aload 0
invokestatic com/nd/android/u/cloud/helper/IDCard/verifyLength(Ljava/lang/String;)Z
ifeq L3
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 2
L0:
aload 2
iconst_0
invokevirtual java/text/SimpleDateFormat/setLenient(Z)V
aload 2
aload 0
bipush 6
bipush 14
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/text/SimpleDateFormat/parse(Ljava/lang/String;)Ljava/util/Date;
pop
L1:
iconst_1
istore 1
L3:
iload 1
ireturn
L2:
astore 0
aload 0
invokevirtual java/text/ParseException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method private static verifyLength(Ljava/lang/String;)Z
aload 0
invokevirtual java/lang/String/length()I
bipush 18
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static verifyMOD(Ljava/lang/String;)Z
aload 0
bipush 17
bipush 18
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
aload 3
astore 2
aload 0
astore 1
ldc "x"
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
ldc "x"
ldc "X"
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc "X"
astore 2
L0:
aload 2
aload 1
invokestatic com/nd/android/u/cloud/helper/IDCard/getVerify(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method
