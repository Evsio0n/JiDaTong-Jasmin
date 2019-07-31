.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;>;"
.inner class public static final enum FRIEND_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;

.field public static final enum 'ATTENTIONS' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;

.field public static final enum 'FELLOWS' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
dup
ldc "ATTENTIONS"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/ATTENTIONS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
dup
ldc "FELLOWS"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/FELLOWS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
iconst_2
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/ATTENTIONS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/FELLOWS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FRIEND_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
