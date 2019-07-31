.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;>;"
.inner class public static final enum FEATURE inner com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.field public static final enum 'ALL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.field public static final enum 'MUSICE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.field public static final enum 'ORIGINAL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.field public static final enum 'PICTURE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.field public static final enum 'VIDEO' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
ldc "ALL"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
ldc "ORIGINAL"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ORIGINAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
ldc "PICTURE"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/PICTURE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
ldc "VIDEO"
iconst_3
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/VIDEO Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
ldc "MUSICE"
iconst_4
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/MUSICE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
iconst_5
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ORIGINAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/PICTURE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
aastore
dup
iconst_3
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/VIDEO Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
aastore
dup
iconst_4
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/MUSICE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
areturn
.limit locals 0
.limit stack 1
.end method
