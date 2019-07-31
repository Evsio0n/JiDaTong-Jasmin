.bytecode 50.0
.class public final synchronized enum com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;>;"
.inner class public static final enum SCHOOL_TYPE inner com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE outer com/android/u/weibo/sina/business/comm/WeiboAPI

.field private static final synthetic '$VALUES' [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.field public static final enum 'COLLEGE' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.field public static final enum 'JUNIOR' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.field public static final enum 'PRIMARY' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.field public static final enum 'SENIOR' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.field public static final enum 'TECHNICAL' Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;

.method static <clinit>()V
new com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
ldc "COLLEGE"
iconst_0
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/COLLEGE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
ldc "SENIOR"
iconst_1
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/SENIOR Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
ldc "TECHNICAL"
iconst_2
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/TECHNICAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
ldc "JUNIOR"
iconst_3
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/JUNIOR Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
new com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
ldc "PRIMARY"
iconst_4
invokespecial com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/<init>(Ljava/lang/String;I)V
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/PRIMARY Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
iconst_5
anewarray com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
dup
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/COLLEGE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
aastore
dup
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/SENIOR Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
aastore
dup
iconst_2
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/TECHNICAL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
aastore
dup
iconst_3
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/JUNIOR Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
aastore
dup
iconst_4
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/PRIMARY Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
aastore
putstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
ldc com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE/$VALUES [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
invokevirtual [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;/clone()Ljava/lang/Object;
checkcast [Lcom/android/u/weibo/sina/business/comm/WeiboAPI$SCHOOL_TYPE;
areturn
.limit locals 0
.limit stack 1
.end method
