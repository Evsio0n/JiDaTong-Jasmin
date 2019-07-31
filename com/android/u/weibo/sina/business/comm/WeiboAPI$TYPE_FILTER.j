.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;>;"
.inner class public static final enum TYPE_FILTER inner com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;

.field public static final enum 'ALL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;

.field public static final enum 'ORIGAL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
dup
ldc "ALL"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
new com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
dup
ldc "ORIGAL"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ORIGAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
iconst_2
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/ORIGAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE_FILTER;
areturn
.limit locals 0
.limit stack 1
.end method
