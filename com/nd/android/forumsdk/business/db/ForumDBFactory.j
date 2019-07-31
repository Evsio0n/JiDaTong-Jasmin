.bytecode 50.0
.class public final synchronized com/nd/android/forumsdk/business/db/ForumDBFactory
.super java/lang/Object

.field private static 'commentDao' Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;

.field private static 'instance' Lcom/nd/android/forumsdk/business/db/ForumDBFactory;

.field private static 'myRssListDao' Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;

.field private static 'newsDao' Lcom/nd/android/forumsdk/business/db/dao/INewsDao;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/instance Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
ifnonnull L0
new com/nd/android/forumsdk/business/db/ForumDBFactory
dup
invokespecial com/nd/android/forumsdk/business/db/ForumDBFactory/<init>()V
putstatic com/nd/android/forumsdk/business/db/ForumDBFactory/instance Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
L0:
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/instance Lcom/nd/android/forumsdk/business/db/ForumDBFactory;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getCommentDao()Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
ifnonnull L0
new com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl
dup
invokespecial com/nd/android/forumsdk/business/db/dao/impl/CommentDaoImpl/<init>()V
putstatic com/nd/android/forumsdk/business/db/ForumDBFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
L0:
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/commentDao Lcom/nd/android/forumsdk/business/db/dao/ICommentDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getMyRssListDao()Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
ifnonnull L0
new com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl
dup
invokespecial com/nd/android/forumsdk/business/db/dao/impl/MyRssListDaoImpl/<init>()V
putstatic com/nd/android/forumsdk/business/db/ForumDBFactory/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
L0:
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/myRssListDao Lcom/nd/android/forumsdk/business/db/dao/IMyRssListDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNewsDao()Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/newsDao Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
ifnonnull L0
new com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl
dup
invokespecial com/nd/android/forumsdk/business/db/dao/impl/NewsDaoImpl/<init>()V
putstatic com/nd/android/forumsdk/business/db/ForumDBFactory/newsDao Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
L0:
getstatic com/nd/android/forumsdk/business/db/ForumDBFactory/newsDao Lcom/nd/android/forumsdk/business/db/dao/INewsDao;
areturn
.limit locals 1
.limit stack 2
.end method
