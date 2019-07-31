.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;>;"
.inner class public static final enum SORT3 inner com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3 outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;

.field public static final enum 'SORT_BY_DISTENCE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;

.field public static final enum 'SORT_BY_TIME' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
dup
ldc "SORT_BY_TIME"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/SORT_BY_TIME Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
dup
ldc "SORT_BY_DISTENCE"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/SORT_BY_DISTENCE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
iconst_2
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/SORT_BY_TIME Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/SORT_BY_DISTENCE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SORT3/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SORT3;
areturn
.limit locals 0
.limit stack 1
.end method
