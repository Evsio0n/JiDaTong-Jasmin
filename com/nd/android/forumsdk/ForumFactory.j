.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/ForumFactory
.super java/lang/Object

.field private static 'commentDao' Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;

.field private static 'instance' Lcom/nd/android/forumsdk/ForumFactory;

.field private static 'newsOperator' Lcom/nd/android/forumsdk/operator/INewsOperator;

.field private static 'postOperator' Lcom/nd/android/forumsdk/operator/IPostOperator;

.field private static 'teamOperator' Lcom/nd/android/forumsdk/operator/ITeamOperator;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/forumsdk/ForumFactory/instance Lcom/nd/android/forumsdk/ForumFactory;
aconst_null
putstatic com/nd/android/forumsdk/ForumFactory/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aconst_null
putstatic com/nd/android/forumsdk/ForumFactory/newsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
aconst_null
putstatic com/nd/android/forumsdk/ForumFactory/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
aconst_null
putstatic com/nd/android/forumsdk/ForumFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/forumsdk/ForumFactory;
.catch all from L0 to L1 using L2
.catch all from L1 to L2 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
ldc com/nd/android/forumsdk/ForumFactory
monitorenter
L0:
getstatic com/nd/android/forumsdk/ForumFactory/instance Lcom/nd/android/forumsdk/ForumFactory;
ifnonnull L6
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
ifnonnull L5
L1:
new java/lang/RuntimeException
dup
ldc "sdk\u914d\u7f6e\u8fd8\u6ca1\u521d\u59cb\u5316\uff0c\u8bf7\u8c03\u7528 ForumFactory.init(...) \u65b9\u6cd5\u5148\u521d\u59cb\u5316\uff01"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
L3:
ldc com/nd/android/forumsdk/ForumFactory
monitorexit
L4:
aload 0
athrow
L5:
new com/nd/android/forumsdk/ForumFactory
dup
invokespecial com/nd/android/forumsdk/ForumFactory/<init>()V
putstatic com/nd/android/forumsdk/ForumFactory/instance Lcom/nd/android/forumsdk/ForumFactory;
new com/nd/android/forumsdk/operator/impl/NewsOperatorImpl
dup
invokespecial com/nd/android/forumsdk/operator/impl/NewsOperatorImpl/<init>()V
putstatic com/nd/android/forumsdk/ForumFactory/newsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
new com/nd/android/forumsdk/operator/impl/TeamOperatorImpl
dup
invokespecial com/nd/android/forumsdk/operator/impl/TeamOperatorImpl/<init>()V
putstatic com/nd/android/forumsdk/ForumFactory/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
new com/nd/android/forumsdk/operator/impl/PostOperatorImpl
dup
invokespecial com/nd/android/forumsdk/operator/impl/PostOperatorImpl/<init>()V
putstatic com/nd/android/forumsdk/ForumFactory/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
new com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl
dup
invokespecial com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl/<init>()V
putstatic com/nd/android/forumsdk/ForumFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
L6:
getstatic com/nd/android/forumsdk/ForumFactory/instance Lcom/nd/android/forumsdk/ForumFactory;
astore 0
ldc com/nd/android/forumsdk/ForumFactory
monitorexit
L7:
aload 0
areturn
.limit locals 1
.limit stack 3
.end method

.method public static init(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;)V
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ifnonnull L1
L0:
new java/lang/RuntimeException
dup
ldc "\u521d\u59cb\u5316\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\uff01"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 1
putstatic com/nd/android/forumsdk/business/constant/ForumConfig/callback Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;
aload 0
putstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
getstatic com/nd/android/forumsdk/ForumFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNewsOperator()Lcom/nd/android/forumsdk/operator/INewsOperator;
getstatic com/nd/android/forumsdk/ForumFactory/newsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
getstatic com/nd/android/forumsdk/ForumFactory/postOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTeamOperator()Lcom/nd/android/forumsdk/operator/ITeamOperator;
getstatic com/nd/android/forumsdk/ForumFactory/teamOperator Lcom/nd/android/forumsdk/operator/ITeamOperator;
areturn
.limit locals 1
.limit stack 1
.end method
