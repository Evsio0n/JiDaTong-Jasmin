.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;>;"
.inner class public static final enum UpdateType inner com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType outer com/android/u/weibo/weibo/controller/NdWeiboManager

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;

.field public static final enum 'NEW' Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;

.field public static final enum 'OLDER' Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;

.method static <clinit>()V
new com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
dup
ldc "NEW"
iconst_0
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
new com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
dup
ldc "OLDER"
iconst_1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
iconst_2
anewarray com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
dup
iconst_0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
aastore
dup
iconst_1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
aastore
putstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/$VALUES [Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
ldc com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/$VALUES [Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual [Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
areturn
.limit locals 0
.limit stack 1
.end method
