.bytecode 50.0
.class public synchronized com/nd/crashcollection/lib/CrashInfo
.super java/lang/Object

.field private 'mAndroidRelease' Ljava/lang/String;

.field private 'mAndroidSdk' I

.field private 'mAppVersion' I

.field private 'mCrashInfo' Ljava/lang/String;

.field private 'mCrashStackMd5' Ljava/lang/String;

.field private 'mCrashTime' J

.field private 'mCrashType' Ljava/lang/String;

.field private 'mLanguage' Ljava/lang/String;

.field private 'mNetworkType' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/NoSuchAlgorithmException from L3 to L4 using L2
.catch java/security/NoSuchAlgorithmException from L5 to L6 using L2
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L2
.catch java/security/NoSuchAlgorithmException from L9 to L10 using L2
.catch java/security/NoSuchAlgorithmException from L11 to L12 using L2
.catch java/security/NoSuchAlgorithmException from L13 to L14 using L2
.catch java/security/NoSuchAlgorithmException from L15 to L16 using L2
.catch java/security/NoSuchAlgorithmException from L17 to L18 using L2
ldc ""
astore 7
aload 7
astore 6
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 8
L1:
aload 7
astore 6
L3:
aload 8
aload 1
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
L4:
aload 7
astore 6
L5:
aload 8
invokevirtual java/security/MessageDigest/digest()[B
astore 1
L6:
aload 7
astore 6
L7:
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 8
L8:
iconst_0
istore 3
L19:
aload 7
astore 6
L9:
iload 3
aload 1
arraylength
if_icmplt L20
L10:
aload 7
astore 6
L11:
aload 8
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 1
L12:
aload 1
astore 6
iload 2
ifeq L21
aload 1
astore 6
L13:
aload 1
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/lang/String/toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
areturn
L14:
iload 4
bipush 16
if_icmpge L16
aload 7
astore 6
L15:
aload 8
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L16:
aload 7
astore 6
L17:
aload 8
iload 4
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L18:
iload 3
iconst_1
iadd
istore 3
goto L19
L2:
astore 1
aload 1
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
L21:
aload 6
areturn
L20:
aload 1
iload 3
baload
istore 5
iload 5
istore 4
iload 5
ifge L14
iload 5
sipush 256
iadd
istore 4
goto L14
.limit locals 9
.limit stack 3
.end method

.method public getAndroidRelease()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mAndroidRelease Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAndroidSdk()I
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mAndroidSdk I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAppVersion()I
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mAppVersion I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCrashInfo()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mCrashInfo Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCrashStackMd5()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mCrashStackMd5 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCrashTime()J
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mCrashTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCrashType()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mCrashType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLanguage()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mLanguage Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNetworkType()Ljava/lang/String;
aload 0
getfield com/nd/crashcollection/lib/CrashInfo/mNetworkType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAndroidRelease(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mAndroidRelease Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAndroidSdk(I)V
aload 0
iload 1
putfield com/nd/crashcollection/lib/CrashInfo/mAndroidSdk I
return
.limit locals 2
.limit stack 2
.end method

.method public setAppVersion(I)V
aload 0
iload 1
putfield com/nd/crashcollection/lib/CrashInfo/mAppVersion I
return
.limit locals 2
.limit stack 2
.end method

.method public setCrashInfo(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mCrashInfo Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCrashStackMd5(ILjava/lang/String;)V
aload 0
aload 0
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%d:%s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 2
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
iconst_1
invokespecial com/nd/crashcollection/lib/CrashInfo/Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
putfield com/nd/crashcollection/lib/CrashInfo/mCrashStackMd5 Ljava/lang/String;
return
.limit locals 3
.limit stack 8
.end method

.method public setCrashStackMd5(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mCrashStackMd5 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCrashTime(J)V
aload 0
lload 1
putfield com/nd/crashcollection/lib/CrashInfo/mCrashTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setCrashType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mCrashType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLanguage(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mLanguage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNetworkType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashInfo/mNetworkType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
