.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/constants/Build
.super java/lang/Object

.field public static final 'EMOJI_SUPPORTED_SDK_INT' I = 553844737


.field public static final 'MIN_SDK_INT' I = 553713665


.field public static final 'MUSIC_DATA_URL_SUPPORTED_SDK_INT' I = 553910273


.field public static final 'OPENID_SUPPORTED_SDK_INT' I = 570425345


.field public static final 'PAY_SUPPORTED_SDK_INT' I = 570425345


.field public static final 'SDK_INT' I = 570425345


.field public static final 'SDK_VERSION_NAME' Ljava/lang/String; = "android 2.0.1 rev 1"

.field public static final 'TIMELINE_SUPPORTED_SDK_INT' I = 553779201


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " should not be instantiated"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static getMajorVersion()I
iconst_2
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getMinorVersion()I
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method
