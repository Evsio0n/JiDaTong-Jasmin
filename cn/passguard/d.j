.bytecode 50.0
.class public final synchronized cn/passguard/D
.super java/lang/Object

.field private static 'a' Lcn/passguard/D;

.field private static 'b' Ljava/lang/Object;

.field private 'c' Ljava/lang/String;

.field private 'd' Landroid/content/Context;

.field private 'e' Landroid/app/AlertDialog;

.field private 'f' Z

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic cn/passguard/D/b Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield cn/passguard/D/c Ljava/lang/String;
aload 0
aconst_null
putfield cn/passguard/D/d Landroid/content/Context;
aload 0
aconst_null
putfield cn/passguard/D/e Landroid/app/AlertDialog;
aload 0
iconst_0
putfield cn/passguard/D/f Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/D;)Landroid/content/Context;
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static a()Lcn/passguard/D;
.catch all from L0 to L1 using L2
getstatic cn/passguard/D/a Lcn/passguard/D;
ifnonnull L1
getstatic cn/passguard/D/b Ljava/lang/Object;
astore 0
aload 0
monitorenter
L0:
new cn/passguard/D
dup
invokespecial cn/passguard/D/<init>()V
putstatic cn/passguard/D/a Lcn/passguard/D;
aload 0
monitorexit
L1:
getstatic cn/passguard/D/a Lcn/passguard/D;
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcn/passguard/D;Z)V
aload 0
iconst_0
putfield cn/passguard/D/f Z
return
.limit locals 2
.limit stack 2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
iconst_0
istore 4
new android/text/format/Time
dup
ldc "GMT+8"
invokespecial android/text/format/Time/<init>(Ljava/lang/String;)V
astore 5
aload 5
invokevirtual android/text/format/Time/setToNow()V
aload 0
aload 1
invokespecial cn/passguard/D/b(Ljava/lang/String;)Landroid/text/format/Time;
astore 1
aload 0
aload 2
invokespecial cn/passguard/D/b(Ljava/lang/String;)Landroid/text/format/Time;
astore 2
iload 4
istore 3
aload 5
aload 1
invokevirtual android/text/format/Time/after(Landroid/text/format/Time;)Z
ifeq L0
iload 4
istore 3
aload 5
aload 2
invokevirtual android/text/format/Time/before(Landroid/text/format/Time;)Z
ifeq L0
iconst_1
istore 3
L0:
iload 3
ireturn
.limit locals 6
.limit stack 3
.end method

.method private b(Ljava/lang/String;)Landroid/text/format/Time;
new android/text/format/Time
dup
invokespecial android/text/format/Time/<init>()V
astore 2
aload 2
aload 1
bipush 6
bipush 8
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_4
bipush 6
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iconst_1
isub
aload 1
iconst_0
iconst_4
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokevirtual android/text/format/Time/set(III)V
aload 2
areturn
.limit locals 3
.limit stack 6
.end method

.method private b()V
aload 0
getfield cn/passguard/D/e Landroid/app/AlertDialog;
ifnonnull L0
new android/app/AlertDialog$Builder
dup
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc "\u63a7\u4ef6\u63d0\u793a"
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "\u6b64\u63a7\u4ef6\u4e3a\u4e34\u65f6\u5f00\u53d1\u7248\u672c\uff0c\u8bf7\u60a8\u53ca\u65f6\u5347\u7ea7\u4e3a\u6b63\u5f0f\u7248\u672c\uff0c\u907f\u514d\u5f71\u54cd\u60a8\u7684\u4f7f\u7528\uff01"
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc "\u786e\u5b9a"
new cn/passguard/G
dup
aload 0
invokespecial cn/passguard/G/<init>(Lcn/passguard/D;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield cn/passguard/D/e Landroid/app/AlertDialog;
aload 0
getfield cn/passguard/D/e Landroid/app/AlertDialog;
new cn/passguard/H
dup
aload 0
invokespecial cn/passguard/H/<init>(Lcn/passguard/D;)V
invokevirtual android/app/AlertDialog/setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
L0:
aload 0
getfield cn/passguard/D/f Z
ifne L1
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
aload 0
getfield cn/passguard/D/e Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
aload 0
iconst_1
putfield cn/passguard/D/f Z
L1:
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic b(Lcn/passguard/D;)V
aload 0
invokespecial cn/passguard/D/b()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/String;)V
aload 0
aload 1
putfield cn/passguard/D/c Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final a(Landroid/content/Context;)Z
.catch java/security/NoSuchAlgorithmException from L0 to L1 using L2
.catch java/security/spec/InvalidKeySpecException from L0 to L1 using L3
.catch java/security/SignatureException from L0 to L1 using L4
.catch java/security/InvalidKeyException from L0 to L1 using L5
.catch org/json/JSONException from L0 to L1 using L6
.catch java/security/NoSuchAlgorithmException from L7 to L8 using L2
.catch java/security/spec/InvalidKeySpecException from L7 to L8 using L3
.catch java/security/SignatureException from L7 to L8 using L4
.catch java/security/InvalidKeyException from L7 to L8 using L5
.catch org/json/JSONException from L7 to L8 using L6
.catch java/security/NoSuchAlgorithmException from L9 to L10 using L2
.catch java/security/spec/InvalidKeySpecException from L9 to L10 using L3
.catch java/security/SignatureException from L9 to L10 using L4
.catch java/security/InvalidKeyException from L9 to L10 using L5
.catch org/json/JSONException from L9 to L10 using L6
.catch java/security/NoSuchAlgorithmException from L11 to L12 using L2
.catch java/security/spec/InvalidKeySpecException from L11 to L12 using L3
.catch java/security/SignatureException from L11 to L12 using L4
.catch java/security/InvalidKeyException from L11 to L12 using L5
.catch org/json/JSONException from L11 to L12 using L6
.catch java/security/NoSuchAlgorithmException from L13 to L14 using L2
.catch java/security/spec/InvalidKeySpecException from L13 to L14 using L3
.catch java/security/SignatureException from L13 to L14 using L4
.catch java/security/InvalidKeyException from L13 to L14 using L5
.catch org/json/JSONException from L13 to L14 using L6
.catch java/security/NoSuchAlgorithmException from L14 to L15 using L2
.catch java/security/spec/InvalidKeySpecException from L14 to L15 using L3
.catch java/security/SignatureException from L14 to L15 using L4
.catch java/security/InvalidKeyException from L14 to L15 using L5
.catch org/json/JSONException from L14 to L15 using L6
.catch java/security/NoSuchAlgorithmException from L16 to L17 using L2
.catch java/security/spec/InvalidKeySpecException from L16 to L17 using L3
.catch java/security/SignatureException from L16 to L17 using L4
.catch java/security/InvalidKeyException from L16 to L17 using L5
.catch org/json/JSONException from L16 to L17 using L6
.catch java/security/NoSuchAlgorithmException from L18 to L19 using L20
.catch java/security/spec/InvalidKeySpecException from L18 to L19 using L21
.catch java/security/SignatureException from L18 to L19 using L22
.catch java/security/InvalidKeyException from L18 to L19 using L23
.catch org/json/JSONException from L18 to L19 using L24
.catch java/security/NoSuchAlgorithmException from L25 to L26 using L2
.catch java/security/spec/InvalidKeySpecException from L25 to L26 using L3
.catch java/security/SignatureException from L25 to L26 using L4
.catch java/security/InvalidKeyException from L25 to L26 using L5
.catch org/json/JSONException from L25 to L26 using L6
.catch java/security/NoSuchAlgorithmException from L26 to L27 using L2
.catch java/security/spec/InvalidKeySpecException from L26 to L27 using L3
.catch java/security/SignatureException from L26 to L27 using L4
.catch java/security/InvalidKeyException from L26 to L27 using L5
.catch org/json/JSONException from L26 to L27 using L6
.catch java/security/NoSuchAlgorithmException from L27 to L28 using L2
.catch java/security/spec/InvalidKeySpecException from L27 to L28 using L3
.catch java/security/SignatureException from L27 to L28 using L4
.catch java/security/InvalidKeyException from L27 to L28 using L5
.catch org/json/JSONException from L27 to L28 using L6
.catch java/security/NoSuchAlgorithmException from L28 to L29 using L2
.catch java/security/spec/InvalidKeySpecException from L28 to L29 using L3
.catch java/security/SignatureException from L28 to L29 using L4
.catch java/security/InvalidKeyException from L28 to L29 using L5
.catch org/json/JSONException from L28 to L29 using L6
.catch java/security/NoSuchAlgorithmException from L30 to L31 using L2
.catch java/security/spec/InvalidKeySpecException from L30 to L31 using L3
.catch java/security/SignatureException from L30 to L31 using L4
.catch java/security/InvalidKeyException from L30 to L31 using L5
.catch org/json/JSONException from L30 to L31 using L6
.catch java/security/NoSuchAlgorithmException from L32 to L33 using L2
.catch java/security/spec/InvalidKeySpecException from L32 to L33 using L3
.catch java/security/SignatureException from L32 to L33 using L4
.catch java/security/InvalidKeyException from L32 to L33 using L5
.catch org/json/JSONException from L32 to L33 using L6
.catch java/security/NoSuchAlgorithmException from L34 to L35 using L2
.catch java/security/spec/InvalidKeySpecException from L34 to L35 using L3
.catch java/security/SignatureException from L34 to L35 using L4
.catch java/security/InvalidKeyException from L34 to L35 using L5
.catch org/json/JSONException from L34 to L35 using L6
.catch java/security/NoSuchAlgorithmException from L36 to L37 using L2
.catch java/security/spec/InvalidKeySpecException from L36 to L37 using L3
.catch java/security/SignatureException from L36 to L37 using L4
.catch java/security/InvalidKeyException from L36 to L37 using L5
.catch org/json/JSONException from L36 to L37 using L6
.catch java/security/NoSuchAlgorithmException from L38 to L39 using L2
.catch java/security/spec/InvalidKeySpecException from L38 to L39 using L3
.catch java/security/SignatureException from L38 to L39 using L4
.catch java/security/InvalidKeyException from L38 to L39 using L5
.catch org/json/JSONException from L38 to L39 using L6
.catch java/security/NoSuchAlgorithmException from L39 to L40 using L2
.catch java/security/spec/InvalidKeySpecException from L39 to L40 using L3
.catch java/security/SignatureException from L39 to L40 using L4
.catch java/security/InvalidKeyException from L39 to L40 using L5
.catch org/json/JSONException from L39 to L40 using L6
.catch java/security/NoSuchAlgorithmException from L41 to L42 using L2
.catch java/security/spec/InvalidKeySpecException from L41 to L42 using L3
.catch java/security/SignatureException from L41 to L42 using L4
.catch java/security/InvalidKeyException from L41 to L42 using L5
.catch org/json/JSONException from L41 to L42 using L6
.catch java/security/NoSuchAlgorithmException from L43 to L44 using L2
.catch java/security/spec/InvalidKeySpecException from L43 to L44 using L3
.catch java/security/SignatureException from L43 to L44 using L4
.catch java/security/InvalidKeyException from L43 to L44 using L5
.catch org/json/JSONException from L43 to L44 using L6
.catch java/security/NoSuchAlgorithmException from L45 to L46 using L2
.catch java/security/spec/InvalidKeySpecException from L45 to L46 using L3
.catch java/security/SignatureException from L45 to L46 using L4
.catch java/security/InvalidKeyException from L45 to L46 using L5
.catch org/json/JSONException from L45 to L46 using L6
aconst_null
astore 6
iconst_0
istore 3
aload 0
getfield cn/passguard/D/c Ljava/lang/String;
ifnonnull L47
L48:
iconst_1
ireturn
L47:
aload 0
aload 1
putfield cn/passguard/D/d Landroid/content/Context;
new java/lang/String
dup
aload 0
getfield cn/passguard/D/c Ljava/lang/String;
iconst_2
invokestatic cn/passguard/a/a(Ljava/lang/String;I)[B
invokespecial java/lang/String/<init>([B)V
astore 7
aload 7
ldc "{"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L48
aload 7
iconst_0
aload 7
ldc "{"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
iconst_2
invokestatic cn/passguard/a/a(Ljava/lang/String;I)[B
astore 1
aload 7
aload 7
ldc "{"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 7
L0:
invokestatic cn/passguard/PassGuardEncrypt/getKey()Ljava/lang/String;
astore 9
aload 9
iconst_0
aload 9
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 8
aload 9
aload 9
ldc "&"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 9
new java/security/spec/RSAPublicKeySpec
dup
new java/math/BigInteger
dup
aload 8
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
new java/math/BigInteger
dup
aload 9
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
invokespecial java/security/spec/RSAPublicKeySpec/<init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
astore 8
ldc "RSA"
invokestatic java/security/KeyFactory/getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
aload 8
invokevirtual java/security/KeyFactory/generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
checkcast java/security/interfaces/RSAPublicKey
astore 8
ldc "SHA1withRSA"
invokestatic java/security/Signature/getInstance(Ljava/lang/String;)Ljava/security/Signature;
astore 9
aload 9
aload 8
invokevirtual java/security/Signature/initVerify(Ljava/security/PublicKey;)V
aload 9
aload 7
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/security/Signature/update([B)V
aload 9
aload 1
invokevirtual java/security/Signature/verify([B)Z
ifeq L48
new org/json/JSONObject
dup
aload 7
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 7
aload 7
ldc "id"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L49
aload 7
ldc "id"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ifne L48
L7:
aload 7
ldc "type"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L50
aload 7
ldc "type"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L8:
aload 1
ifnull L51
L9:
aload 1
ldc "test"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L51
L10:
iload 3
istore 2
L11:
aload 7
ldc "platform"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L12
aload 7
ldc "platform"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L12:
iload 2
iconst_2
iand
ifeq L52
L13:
aload 7
ldc "notafter"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L53
aload 7
ldc "notafter"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L14:
aload 7
ldc "notbefore"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L15
aload 7
ldc "notbefore"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 6
L15:
aload 1
ifnull L54
aload 6
ifnull L54
L16:
aload 0
aload 6
aload 1
invokespecial cn/passguard/D/a(Ljava/lang/String;Ljava/lang/String;)Z
istore 5
L17:
iload 5
istore 4
iload 5
ifeq L55
L18:
aload 0
invokespecial cn/passguard/D/b()V
new cn/passguard/E
dup
aload 0
invokespecial cn/passguard/E/<init>(Lcn/passguard/D;)V
invokevirtual java/lang/Thread/start()V
L19:
iload 5
istore 4
L55:
iload 4
ireturn
L49:
iconst_m1
istore 2
goto L1
L50:
aconst_null
astore 1
goto L8
L53:
aconst_null
astore 1
goto L14
L54:
iconst_1
istore 5
goto L17
L51:
aload 1
ifnull L26
L25:
aload 1
ldc "product"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L52
L26:
aload 7
ldc "package"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L56
aload 7
ldc "package"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
L27:
aload 7
ldc "applyname"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L57
aload 7
ldc "applyname"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
L28:
aload 7
ldc "platform"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L58
aload 7
ldc "platform"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L29:
aload 1
ifnull L52
aload 6
ifnull L52
iload 2
iconst_2
iand
ifeq L52
L30:
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
invokevirtual android/content/pm/PackageManager/getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 8
L31:
iconst_0
istore 2
L32:
iload 2
aload 6
invokevirtual org/json/JSONArray/length()I
if_icmplt L43
L33:
iconst_0
istore 2
L34:
aload 0
getfield cn/passguard/D/d Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 6
L35:
iconst_0
istore 3
L36:
iload 3
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmplt L45
L37:
iconst_0
istore 3
L59:
iload 2
ifeq L52
iload 3
ifeq L52
L38:
aload 7
ldc "notafter"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L60
aload 7
ldc "notafter"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L39:
aload 7
ldc "notbefore"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L61
aload 7
ldc "notbefore"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 6
L40:
aload 1
ifnull L62
aload 6
ifnull L62
L41:
aload 0
aload 6
aload 1
invokespecial cn/passguard/D/a(Ljava/lang/String;Ljava/lang/String;)Z
istore 4
L42:
goto L55
L43:
aload 6
iload 2
invokevirtual org/json/JSONArray/getString(I)Ljava/lang/String;
aload 8
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L63
L44:
iconst_1
istore 2
goto L34
L45:
aload 1
iload 3
invokevirtual org/json/JSONArray/getString(I)Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 4
L46:
iload 4
ifeq L64
iconst_1
istore 3
goto L59
L64:
iload 3
iconst_1
iadd
istore 3
goto L36
L60:
aconst_null
astore 1
goto L39
L61:
aconst_null
astore 6
goto L40
L62:
iconst_1
istore 4
goto L55
L2:
astore 1
iconst_1
istore 4
L65:
aload 1
invokevirtual java/security/NoSuchAlgorithmException/printStackTrace()V
goto L55
L3:
astore 1
iconst_1
istore 4
L66:
aload 1
invokevirtual java/security/spec/InvalidKeySpecException/printStackTrace()V
goto L55
L4:
astore 1
iconst_1
istore 4
L67:
aload 1
invokevirtual java/security/SignatureException/printStackTrace()V
goto L55
L5:
astore 1
iconst_1
istore 4
L68:
aload 1
invokevirtual java/security/InvalidKeyException/printStackTrace()V
goto L55
L6:
astore 1
iconst_1
istore 4
L69:
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L55
L24:
astore 1
iload 5
istore 4
goto L69
L23:
astore 1
iload 5
istore 4
goto L68
L22:
astore 1
iload 5
istore 4
goto L67
L21:
astore 1
iload 5
istore 4
goto L66
L20:
astore 1
iload 5
istore 4
goto L65
L52:
iconst_1
istore 4
goto L55
L56:
aconst_null
astore 1
goto L27
L57:
aconst_null
astore 6
goto L28
L58:
iconst_0
istore 2
goto L29
L63:
iload 2
iconst_1
iadd
istore 2
goto L32
.limit locals 10
.limit stack 6
.end method
