.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;>;"
.inner class public static final enum SRC_FILTER inner com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;

.field public static final enum 'ALL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;

.field public static final enum 'WEIBO' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;

.field public static final enum 'WEIQUN' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
dup
ldc "ALL"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
dup
ldc "WEIBO"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/WEIBO Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
dup
ldc "WEIQUN"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/WEIQUN Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
iconst_3
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/WEIBO Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/WEIQUN Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SRC_FILTER;
areturn
.limit locals 0
.limit stack 1
.end method
