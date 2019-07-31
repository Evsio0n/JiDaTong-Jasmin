.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;>;"
.inner class public static final enum LANGUAGE inner com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;

.field public static final enum 'cnname' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;

.field public static final enum 'twname' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
dup
ldc "cnname"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/cnname Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
dup
ldc "twname"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/twname Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
iconst_2
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/cnname Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/twname Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$LANGUAGE;
areturn
.limit locals 0
.limit stack 1
.end method
