.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;>;"
.inner class public static final enum COMMENTS_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.field public static final enum 'BOTH' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.field public static final enum 'CUR_STATUSES' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.field public static final enum 'NONE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.field public static final enum 'ORIGAL_STATUSES' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
dup
ldc "NONE"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/NONE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
dup
ldc "CUR_STATUSES"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/CUR_STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
dup
ldc "ORIGAL_STATUSES"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/ORIGAL_STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
dup
ldc "BOTH"
iconst_3
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/BOTH Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
iconst_4
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/NONE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/CUR_STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/ORIGAL_STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
aastore
dup
iconst_3
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/BOTH Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
