.bytecode 50.0
.class public synchronized com/ta/utdid2/device/UTUtdid
.super java/lang/Object

.field private static final 'CREATE_LOCK' Ljava/lang/Object;

.field private static final 'HMAC_KEY' Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final 'S_GLOBAL_PERSISTENT_CONFIG_DIR' Ljava/lang/String;

.field private static final 'S_GLOBAL_PERSISTENT_CONFIG_KEY' Ljava/lang/String; = "Alvin2"

.field private static final 'S_LOCAL_STORAGE_KEY' Ljava/lang/String; = "ContextData"

.field private static final 'S_LOCAL_STORAGE_NAME' Ljava/lang/String; = ".DataStorage"

.field static final 'UM_SETTINGS_STORAGE' Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final 'UM_SETTINGS_STORAGE_NEW' Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static 's_umutdid' Lcom/ta/utdid2/device/UTUtdid;

.field private 'mCBDomain' Ljava/lang/String;

.field private 'mCBKey' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mPC' Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private 'mPattern' Ljava/util/regex/Pattern;

.field private 'mTaoPC' Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private 'mUtdid' Ljava/lang/String;

.field private 'mUtdidHelper' Lcom/ta/utdid2/device/UTUtdidHelper;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/ta/utdid2/device/UTUtdid/CREATE_LOCK Ljava/lang/Object;
aconst_null
putstatic com/ta/utdid2/device/UTUtdid/s_umutdid Lcom/ta/utdid2/device/UTUtdid;
new java/lang/StringBuilder
dup
ldc ".UTSystemConfig"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Global"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/ta/utdid2/device/UTUtdid/S_GLOBAL_PERSISTENT_CONFIG_DIR Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
aload 0
aconst_null
putfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 0
ldc "xx_utdid_key"
putfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
aload 0
ldc "xx_utdid_domain"
putfield com/ta/utdid2/device/UTUtdid/mCBDomain Ljava/lang/String;
aload 0
aconst_null
putfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
aconst_null
putfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
ldc "[^0-9a-zA-Z=/+]+"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
putfield com/ta/utdid2/device/UTUtdid/mPattern Ljava/util/regex/Pattern;
aload 0
aload 1
putfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
aload 0
new com/ta/utdid2/core/persistent/PersistentConfiguration
dup
aload 1
getstatic com/ta/utdid2/device/UTUtdid/S_GLOBAL_PERSISTENT_CONFIG_DIR Ljava/lang/String;
ldc "Alvin2"
iconst_0
iconst_1
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
putfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
new com/ta/utdid2/core/persistent/PersistentConfiguration
dup
aload 1
ldc ".DataStorage"
ldc "ContextData"
iconst_0
iconst_1
invokespecial com/ta/utdid2/core/persistent/PersistentConfiguration/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
putfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
new com/ta/utdid2/device/UTUtdidHelper
dup
invokespecial com/ta/utdid2/device/UTUtdidHelper/<init>()V
putfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 0
ldc "K_%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/hashCode(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
aload 0
ldc "D_%d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mCBDomain Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/hashCode(Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/ta/utdid2/device/UTUtdid/mCBDomain Ljava/lang/String;
return
.limit locals 2
.limit stack 8
.end method

.method private static _calcHmac([B)Ljava/lang/String;
.throws java/lang/Exception
ldc "HmacSHA1"
invokestatic javax/crypto/Mac/getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
astore 1
aload 1
new javax/crypto/spec/SecretKeySpec
dup
ldc "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"
invokevirtual java/lang/String/getBytes()[B
aload 1
invokevirtual javax/crypto/Mac/getAlgorithm()Ljava/lang/String;
invokespecial javax/crypto/spec/SecretKeySpec/<init>([BLjava/lang/String;)V
invokevirtual javax/crypto/Mac/init(Ljava/security/Key;)V
aload 1
aload 0
invokevirtual javax/crypto/Mac/doFinal([B)[B
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method private final _generateUtdid()[B
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 4
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ldiv
l2i
istore 1
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
invokevirtual java/util/Random/nextInt()I
istore 2
iload 1
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 3
iload 2
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
astore 5
aload 4
aload 3
iconst_0
iconst_4
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
aload 4
aload 5
iconst_0
iconst_4
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
aload 4
iconst_3
invokevirtual java/io/ByteArrayOutputStream/write(I)V
aload 4
iconst_0
invokevirtual java/io/ByteArrayOutputStream/write(I)V
L0:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/android/utils/PhoneInfoUtils/getImei(Landroid/content/Context;)Ljava/lang/String;
astore 3
L1:
aload 4
aload 3
invokestatic com/ta/utdid2/android/utils/StringUtils/hashCode(Ljava/lang/String;)I
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
iconst_0
iconst_4
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
aload 4
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokestatic com/ta/utdid2/device/UTUtdid/_calcHmac([B)Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/hashCode(Ljava/lang/String;)I
invokestatic com/ta/utdid2/android/utils/IntUtils/getBytes(I)[B
invokevirtual java/io/ByteArrayOutputStream/write([B)V
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
L2:
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
invokevirtual java/util/Random/nextInt()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L1
.limit locals 6
.limit stack 4
.end method

.method private _removeIllegalKeys()V
iconst_1
istore 2
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ifnull L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "UTDID2"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "UTDID"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToTaoPPC(Ljava/lang/String;)V
L1:
iconst_0
istore 1
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "DID"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L2
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "DID"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/remove(Ljava/lang/String;)V
iconst_1
istore 1
L2:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "EI"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L3
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "EI"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/remove(Ljava/lang/String;)V
iconst_1
istore 1
L3:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "SI"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L4
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "SI"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/remove(Ljava/lang/String;)V
iload 2
istore 1
L5:
iload 1
ifeq L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/commit()Z
pop
L0:
return
L4:
goto L5
.limit locals 4
.limit stack 2
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ifnull L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "UTDID2"
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 1
invokevirtual com/ta/utdid2/device/UTUtdidHelper/packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
ifnull L0
aload 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
ifnull L3
getstatic com/ta/utdid2/device/UTUtdid/s_umutdid Lcom/ta/utdid2/device/UTUtdid;
ifnonnull L3
getstatic com/ta/utdid2/device/UTUtdid/CREATE_LOCK Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
getstatic com/ta/utdid2/device/UTUtdid/s_umutdid Lcom/ta/utdid2/device/UTUtdid;
ifnonnull L1
new com/ta/utdid2/device/UTUtdid
dup
aload 0
invokespecial com/ta/utdid2/device/UTUtdid/<init>(Landroid/content/Context;)V
astore 0
aload 0
putstatic com/ta/utdid2/device/UTUtdid/s_umutdid Lcom/ta/utdid2/device/UTUtdid;
aload 0
invokespecial com/ta/utdid2/device/UTUtdid/_removeIllegalKeys()V
L1:
aload 1
monitorexit
L3:
getstatic com/ta/utdid2/device/UTUtdid/s_umutdid Lcom/ta/utdid2/device/UTUtdid;
areturn
L2:
astore 0
aload 1
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 3
.end method

.method private isValidUTDID(Ljava/lang/String;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
ifnull L0
aload 1
astore 4
aload 1
ldc "\n"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L1
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
L1:
iload 3
istore 2
bipush 24
aload 4
invokevirtual java/lang/String/length()I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPattern Ljava/util/regex/Pattern;
aload 4
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ifne L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 5
.limit stack 4
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
aload 1
ifnull L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ifnull L0
aload 1
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
getfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
getfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
aload 1
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/commit()Z
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
ldc "android.permission.WRITE_SETTINGS"
invokevirtual android/content/Context/checkCallingOrSelfPermission(Ljava/lang/String;)I
ifne L4
aload 0
aload 1
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L4
aload 1
astore 2
aload 1
ldc "\n"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L6:
bipush 24
aload 2
invokevirtual java/lang/String/length()I
if_icmpne L4
aconst_null
astore 1
L0:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "mqBRboGZkQPcAkyk"
invokestatic android/provider/Settings$System/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 3
L1:
aload 3
astore 1
L7:
aload 0
aload 1
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifne L4
L3:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "mqBRboGZkQPcAkyk"
aload 2
invokestatic android/provider/Settings$System/putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
pop
L4:
return
L5:
astore 1
return
L2:
astore 3
goto L7
.limit locals 4
.limit stack 4
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
ldc "android.permission.WRITE_SETTINGS"
invokevirtual android/content/Context/checkCallingOrSelfPermission(Ljava/lang/String;)I
ifne L0
aload 1
ifnull L0
aload 0
aload 1
invokespecial com/ta/utdid2/device/UTUtdid/syncUTDIDToSettings(Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L0
aload 1
astore 2
aload 1
ldc "\n"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L1
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L1:
aload 2
invokevirtual java/lang/String/length()I
bipush 24
if_icmpne L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ifnull L0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
ldc "UTDID2"
aload 2
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mTaoPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/commit()Z
pop
L0:
return
.limit locals 3
.limit stack 4
.end method

.method private syncUTDIDToSettings(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aconst_null
astore 2
L0:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "dxCRMxhQkdGePGnp"
invokestatic android/provider/Settings$System/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 3
L1:
aload 3
astore 2
L6:
aload 1
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
L3:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "dxCRMxhQkdGePGnp"
aload 1
invokestatic android/provider/Settings$System/putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
pop
L4:
return
L5:
astore 1
return
L2:
astore 3
goto L6
.limit locals 4
.limit stack 3
.end method

.method public getValue()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L10
.catch all from L8 to L9 using L2
.catch all from L9 to L11 using L2
.catch all from L12 to L13 using L2
.catch java/lang/Exception from L13 to L14 using L15
.catch all from L13 to L14 using L2
.catch all from L16 to L17 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L27 to L28 using L2
.catch all from L29 to L30 using L2
.catch all from L30 to L31 using L2
.catch java/lang/Exception from L32 to L33 using L34
.catch all from L32 to L33 using L2
.catch java/lang/Exception from L35 to L36 using L34
.catch all from L35 to L36 using L2
.catch java/lang/Exception from L37 to L38 using L34
.catch all from L37 to L38 using L2
.catch java/lang/Exception from L38 to L39 using L34
.catch all from L38 to L39 using L2
.catch java/lang/Exception from L39 to L40 using L34
.catch all from L39 to L40 using L2
.catch all from L41 to L42 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
ifnull L43
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
astore 2
L1:
aload 0
monitorexit
aload 2
areturn
L43:
ldc ""
astore 3
L3:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "mqBRboGZkQPcAkyk"
invokestatic android/provider/Settings$System/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 2
L4:
aload 2
astore 3
L44:
aload 3
astore 2
L6:
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifne L1
new com/ta/utdid2/device/UTUtdidHelper2
dup
invokespecial com/ta/utdid2/device/UTUtdidHelper2/<init>()V
astore 4
L7:
iconst_0
istore 1
L8:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "dxCRMxhQkdGePGnp"
invokestatic android/provider/Settings$System/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 2
L9:
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L45
aload 4
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper2/dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L12
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToNewSettings(Ljava/lang/String;)V
L11:
aload 3
astore 2
goto L1
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
L10:
astore 2
aconst_null
astore 2
goto L9
L12:
aload 4
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper2/dePack(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L46
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 3
invokevirtual com/ta/utdid2/device/UTUtdidHelper/packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L46
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToSettings(Ljava/lang/String;)V
L13:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mContext Landroid/content/Context;
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
ldc "dxCRMxhQkdGePGnp"
invokestatic android/provider/Settings$System/getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
astore 3
L14:
aload 3
astore 2
L16:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper/dePack(Ljava/lang/String;)Ljava/lang/String;
astore 3
L17:
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L19
aload 0
aload 3
putfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToTaoPPC(Ljava/lang/String;)V
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToLocalStorage(Ljava/lang/String;)V
aload 0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToNewSettings(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
astore 2
L18:
goto L1
L19:
aload 0
invokespecial com/ta/utdid2/device/UTUtdid/getUtdidFromTaoPPC()Ljava/lang/String;
astore 2
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L24
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper/packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
astore 3
L20:
iload 1
ifeq L22
L21:
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToSettings(Ljava/lang/String;)V
L22:
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToNewSettings(Ljava/lang/String;)V
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToLocalStorage(Ljava/lang/String;)V
aload 0
aload 2
putfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
L23:
goto L1
L24:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mPC Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
aload 0
getfield com/ta/utdid2/device/UTUtdid/mCBKey Ljava/lang/String;
invokevirtual com/ta/utdid2/core/persistent/PersistentConfiguration/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L32
aload 4
aload 5
invokevirtual com/ta/utdid2/device/UTUtdidHelper2/dePack(Ljava/lang/String;)Ljava/lang/String;
astore 3
L25:
aload 3
astore 2
L26:
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifne L27
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 5
invokevirtual com/ta/utdid2/device/UTUtdidHelper/dePack(Ljava/lang/String;)Ljava/lang/String;
astore 2
L27:
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/isValidUTDID(Ljava/lang/String;)Z
ifeq L32
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper/packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L32
aload 0
aload 2
putfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
L28:
iload 1
ifeq L30
L29:
aload 0
aload 3
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToSettings(Ljava/lang/String;)V
L30:
aload 0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToTaoPPC(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
astore 2
L31:
goto L1
L32:
aload 0
invokespecial com/ta/utdid2/device/UTUtdid/_generateUtdid()[B
astore 2
L33:
aload 2
ifnull L42
L35:
aload 0
aload 2
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
putfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
aload 0
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToTaoPPC(Ljava/lang/String;)V
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdidHelper Lcom/ta/utdid2/device/UTUtdidHelper;
aload 2
invokevirtual com/ta/utdid2/device/UTUtdidHelper/pack([B)Ljava/lang/String;
astore 2
L36:
aload 2
ifnull L39
iload 1
ifeq L38
L37:
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToSettings(Ljava/lang/String;)V
L38:
aload 0
aload 2
invokespecial com/ta/utdid2/device/UTUtdid/saveUtdidToLocalStorage(Ljava/lang/String;)V
L39:
aload 0
getfield com/ta/utdid2/device/UTUtdid/mUtdid Ljava/lang/String;
astore 2
L40:
goto L1
L34:
astore 2
L41:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
L42:
aconst_null
astore 2
goto L1
L5:
astore 2
goto L44
L15:
astore 3
L46:
goto L16
L45:
iconst_1
istore 1
goto L19
.limit locals 6
.limit stack 3
.end method
