.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;>;"
.inner class public static final enum TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;

.field public static final enum 'COMMENTS' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;

.field public static final enum 'MESSAGE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;

.field public static final enum 'STATUSES' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
dup
ldc "STATUSES"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
dup
ldc "COMMENTS"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/COMMENTS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
dup
ldc "MESSAGE"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/MESSAGE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
iconst_3
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/STATUSES Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/COMMENTS Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/MESSAGE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
