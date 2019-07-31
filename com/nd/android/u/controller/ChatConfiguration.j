.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/ChatConfiguration
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/ChatConfiguration;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/ChatConfiguration;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/ChatConfiguration;

.field public 'CHAT_PUBLIC_101_ACCOUNT_REGISTER_URL' Ljava/lang/String;

.field public 'CHAT_PUBLIC_REGIST_URL' Ljava/lang/String;

.field public 'LBS_IP' Ljava/lang/String;

.field public 'LBS_IP_PORT' I

.field public 'LBS_PORT' I

.field public 'LBS_URL' Ljava/lang/String;

.field public 'MAX_RECORD_TIME' I

.field public 'PUBLIC_NUMBER_URL' Ljava/lang/String;

.field public 'SFSLBS' Ljava/lang/String;

.field public 'SHARE_FILE_SERVICE_URL' Ljava/lang/String;

.field public 'isInner' Z

.field public 'isReceiveSystemMessage' Z

.field public 'popMessageActivity' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field public 'testId' Ljava/lang/String;

.method static <clinit>()V
new com/nd/android/u/controller/ChatConfiguration
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/ChatConfiguration/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
iconst_1
anewarray com/nd/android/u/controller/ChatConfiguration
dup
iconst_0
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
aastore
putstatic com/nd/android/u/controller/ChatConfiguration/ENUM$VALUES [Lcom/nd/android/u/controller/ChatConfiguration;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iconst_0
putfield com/nd/android/u/controller/ChatConfiguration/isInner Z
aload 0
ldc ""
putfield com/nd/android/u/controller/ChatConfiguration/PUBLIC_NUMBER_URL Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/controller/ChatConfiguration/isReceiveSystemMessage Z
aload 0
bipush 120
putfield com/nd/android/u/controller/ChatConfiguration/MAX_RECORD_TIME I
aload 0
ldc ""
putfield com/nd/android/u/controller/ChatConfiguration/CHAT_PUBLIC_REGIST_URL Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/controller/ChatConfiguration/CHAT_PUBLIC_101_ACCOUNT_REGISTER_URL Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/controller/ChatConfiguration/testId Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/ChatConfiguration;
ldc com/nd/android/u/controller/ChatConfiguration
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/ChatConfiguration
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/ChatConfiguration;
getstatic com/nd/android/u/controller/ChatConfiguration/ENUM$VALUES [Lcom/nd/android/u/controller/ChatConfiguration;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/ChatConfiguration
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public getShareFileServiceUrl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/ChatConfiguration/SFSLBS Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/controller/ChatConfiguration/SFSLBS Ljava/lang/String;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/ChatConfiguration/SHARE_FILE_SERVICE_URL Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
