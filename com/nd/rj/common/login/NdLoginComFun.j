.bytecode 50.0
.class public synchronized com/nd/rj/common/login/NdLoginComFun
.super java/lang/Object
.inner class static final inner com/nd/rj/common/login/NdLoginComFun$1
.inner class static final inner com/nd/rj/common/login/NdLoginComFun$2

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static Md5Digest(Ljava/lang/String;)Ljava/lang/String;
aload 0
iconst_1
invokestatic com/nd/rj/common/login/NdLoginComFun/Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static Md5Digest(Ljava/lang/String;Z)Ljava/lang/String;
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
astore 6
aload 6
astore 5
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 7
L1:
aload 6
astore 5
L3:
aload 7
aload 0
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/MessageDigest/update([B)V
L4:
aload 6
astore 5
L5:
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
L6:
aload 6
astore 5
L7:
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
L8:
iconst_0
istore 2
L19:
aload 6
astore 5
L9:
iload 2
aload 0
arraylength
if_icmpge L20
L10:
aload 0
iload 2
baload
istore 4
iload 4
istore 3
iload 4
ifge L21
iload 4
sipush 256
iadd
istore 3
L21:
iload 3
bipush 16
if_icmpge L12
aload 6
astore 5
L11:
aload 7
ldc "0"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L12:
aload 6
astore 5
L13:
aload 7
iload 3
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L14:
iload 2
iconst_1
iadd
istore 2
goto L19
L20:
aload 6
astore 5
L15:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
astore 0
L16:
aload 0
astore 5
iload 1
ifeq L22
aload 0
astore 5
L17:
aload 0
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
astore 0
L18:
aload 0
astore 5
L22:
aload 5
areturn
L2:
astore 0
aload 0
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
aload 5
areturn
.limit locals 8
.limit stack 3
.end method

.method public static RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch org/bouncycastle/crypto/InvalidCipherTextException from L0 to L1 using L2
new org/bouncycastle/crypto/params/RSAKeyParameters
dup
iconst_0
new java/math/BigInteger
dup
aload 1
bipush 16
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;I)V
new java/math/BigInteger
dup
aload 2
bipush 16
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;I)V
invokespecial org/bouncycastle/crypto/params/RSAKeyParameters/<init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
astore 1
new org/bouncycastle/crypto/encodings/PKCS1Encoding
dup
new org/bouncycastle/crypto/engines/RSAEngine
dup
invokespecial org/bouncycastle/crypto/engines/RSAEngine/<init>()V
invokespecial org/bouncycastle/crypto/encodings/PKCS1Encoding/<init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
astore 2
aload 2
iconst_1
aload 1
invokeinterface org/bouncycastle/crypto/AsymmetricBlockCipher/init(ZLorg/bouncycastle/crypto/CipherParameters;)V 2
L0:
new java/lang/String
dup
new org/bouncycastle/util/encoders/BASE64Encoder
dup
aload 2
aload 0
invokevirtual java/lang/String/getBytes()[B
iconst_0
aload 0
invokevirtual java/lang/String/getBytes()[B
arraylength
invokeinterface org/bouncycastle/crypto/AsymmetricBlockCipher/processBlock([BII)[B 3
invokespecial org/bouncycastle/util/encoders/BASE64Encoder/<init>([B)V
invokevirtual org/bouncycastle/util/encoders/BASE64Encoder/encode()[C
invokespecial java/lang/String/<init>([C)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual org/bouncycastle/crypto/InvalidCipherTextException/printStackTrace()V
ldc ""
areturn
.limit locals 3
.limit stack 8
.end method

.method public static SetEditTextEditable(Landroid/widget/EditText;Ljava/lang/Boolean;)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
iconst_1
invokevirtual android/widget/EditText/setFocusableInTouchMode(Z)V
aload 0
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new com/nd/rj/common/login/NdLoginComFun$1
dup
invokespecial com/nd/rj/common/login/NdLoginComFun$1/<init>()V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
return
L0:
aload 0
iconst_0
invokevirtual android/widget/EditText/setFocusableInTouchMode(Z)V
aload 0
iconst_1
anewarray android/text/InputFilter
dup
iconst_0
new com/nd/rj/common/login/NdLoginComFun$2
dup
invokespecial com/nd/rj/common/login/NdLoginComFun$2/<init>()V
aastore
invokevirtual android/widget/EditText/setFilters([Landroid/text/InputFilter;)V
return
.limit locals 2
.limit stack 6
.end method

.method public static ShowToast(Landroid/content/Context;I)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
iload 1
iconst_0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;III)V
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getstatic com/nd/rj/common/R$string/nd_unknow_error I
iconst_0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;III)V
return
.limit locals 3
.limit stack 4
.end method

.method public static ShowToast(Landroid/content/Context;III)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
astore 4
aload 4
bipush 17
iload 2
iload 3
invokevirtual android/widget/Toast/setGravity(III)V
aload 4
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getstatic com/nd/rj/common/R$string/nd_unknow_error I
iconst_0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;III)V
return
.limit locals 5
.limit stack 4
.end method

.method public static ShowToast(Landroid/content/Context;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getstatic com/nd/rj/common/R$string/nd_unknow_error I
iconst_0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;III)V
return
.limit locals 2
.limit stack 4
.end method

.method public static ShowToast(Landroid/content/Context;Ljava/lang/String;II)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
astore 1
aload 1
bipush 17
iload 2
iload 3
invokevirtual android/widget/Toast/setGravity(III)V
aload 1
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getstatic com/nd/rj/common/R$string/nd_unknow_error I
iconst_0
iconst_0
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;III)V
return
.limit locals 4
.limit stack 4
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
ldc "^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isNumeric(Ljava/lang/String;)Z
ldc "[0-9]*"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/matches()Z
ireturn
.limit locals 1
.limit stack 2
.end method
