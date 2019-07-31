.bytecode 50.0
.class public synchronized com/hisun/b2c/api/core/XmlBuildHelper
.super java/lang/Object

.field static final 'head' Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static buildMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
aload 4
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/printArray([Ljava/lang/String;)V
aload 5
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/printArray([Ljava/lang/String;)V
new java/lang/StringBuffer
dup
ldc "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
aload 7
ldc "<ROOT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<HEAD>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<TXNCD>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 3
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</TXNCD>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<VERSION>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "3.1.0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</VERSION>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<PLAT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "3"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</PLAT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<MCID>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/createMCID()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</MCID>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<MAC>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
ifnull L3
aload 7
aload 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L3:
aload 7
ldc "</MAC>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<IMSI>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
ifnull L4
aload 7
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L4:
aload 7
ldc "</IMSI>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<IMEI>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
ifnull L5
aload 7
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
aload 7
ldc "</IMEI>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</HEAD>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<BODY>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "<SERLNO>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</SERLNO>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ifnull L6
aload 5
ifnull L6
iconst_0
istore 6
L7:
iload 6
aload 4
arraylength
if_icmplt L8
L6:
aload 7
ldc "</BODY>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 0
aload 7
ldc "<SIGNATURE>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 7
aload 0
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/replaceBlank(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/getHmacSigned(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
aload 7
ldc "</SIGNATURE>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "</ROOT>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L8:
aload 5
iload 6
aaload
ifnull L9
aload 7
new java/lang/StringBuilder
dup
ldc "<"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
iload 6
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
aload 5
iload 6
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
new java/lang/StringBuilder
dup
ldc "</"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 4
iload 6
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L9:
iload 6
iconst_1
iadd
istore 6
goto L7
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 8
.limit stack 5
.end method

.method private static createMCID()Ljava/lang/String;
new java/lang/StringBuilder
dup
new java/text/SimpleDateFormat
dup
ldc "yyyyMMddHHmmss"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
bipush 18
invokestatic com/hisun/b2c/api/core/XmlBuildHelper/createRandom(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 5
.end method

.method private static createRandom(I)Ljava/lang/String;
ldc "1234567890"
invokevirtual java/lang/String/length()I
istore 5
iconst_1
istore 1
L0:
ldc ""
astore 8
iconst_0
istore 2
iconst_0
istore 3
L1:
iload 3
iload 0
if_icmplt L2
iload 1
istore 3
iload 2
iconst_2
if_icmplt L3
iconst_0
istore 3
L3:
iload 3
istore 1
iload 3
ifne L0
aload 8
areturn
L2:
invokestatic java/lang/Math/random()D
iload 5
i2d
dmul
invokestatic java/lang/Math/floor(D)D
d2i
istore 6
ldc "1234567890"
iload 6
invokevirtual java/lang/String/charAt(I)C
istore 7
iload 2
istore 4
bipush 48
iload 7
if_icmpgt L4
iload 2
istore 4
iload 7
bipush 57
if_icmpgt L4
iload 2
iconst_1
iadd
istore 4
L4:
new java/lang/StringBuilder
dup
aload 8
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "1234567890"
iload 6
invokevirtual java/lang/String/charAt(I)C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
iload 3
iconst_1
iadd
istore 3
iload 4
istore 2
goto L1
.limit locals 9
.limit stack 4
.end method

.method public static getHmacSigned(Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
new java/io/File
dup
ldc "/mnt/sdcard/ipos2ptcflag"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L0
new java/lang/String
dup
ldc "YHIFyVj7Gu3oppBV+Mumj88uuyufG+7bgoQ="
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 1
L1:
new javax/crypto/spec/SecretKeySpec
dup
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
ldc "HmacSHA1"
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
astore 1
ldc "HmacSHA1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 2
aload 2
aload 1
invokevirtual javax/crypto/Mac/init(Ljava/security/Key;)V
new java/lang/String
dup
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual javax/crypto/Mac/doFinal([B)[B
invokestatic com/hisun/b2c/api/util/EncodeUtil/encodeBase64([B)[B
invokespecial java/lang/String/<init>([B)V
areturn
L0:
new java/io/File
dup
ldc "/mnt/sdcard/ipos2preptcflag"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L2
new java/lang/String
dup
ldc "YHIFyVj7Gu3oppBV+Mumj88uuyufG+7bgoQ="
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 1
goto L1
L2:
new java/lang/String
dup
ldc "BKQRFyVj7Gu3BV+MumjfG+7bgoQ="
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
astore 1
goto L1
.limit locals 3
.limit stack 5
.end method

.method private static printArray([Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
new java/lang/StringBuffer
dup
ldc "["
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 2
iconst_0
istore 1
L1:
iload 1
aload 0
arraylength
if_icmplt L2
aload 2
ldc "]"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
return
L2:
aload 2
aload 0
iload 1
aaload
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
ldc ", "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 3
.limit stack 3
.end method

.method private static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
ldc ""
astore 1
aload 0
ifnull L0
ldc "\\s*|\u0009|\r|\u000c|\n|"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
ldc ""
invokevirtual java/util/regex/Matcher/replaceAll(Ljava/lang/String;)Ljava/lang/String;
ldc "<?xmlversion=\"1.0\"encoding=\"UTF-8\"?>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "<ROOT>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "</ROOT>"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
