.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;>;"
.inner class public static final enum RANGE inner com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;

.field public static final enum 'ALL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;

.field public static final enum 'ATTENTIONS' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;

.field public static final enum 'ATTENTION_TAGS' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
dup
ldc "ATTENTIONS"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ATTENTIONS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
dup
ldc "ATTENTION_TAGS"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ATTENTION_TAGS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
dup
ldc "ALL"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
iconst_3
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ATTENTIONS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ATTENTION_TAGS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$RANGE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$RANGE;
areturn
.limit locals 0
.limit stack 1
.end method
