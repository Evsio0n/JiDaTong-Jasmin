.bytecode 50.0
.class public final synchronized enum com/nd/android/u/news/controller/NewsManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/news/controller/NewsManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/news/controller/NewsManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/news/controller/NewsManager;

.field private static 'mContext' Landroid/content/Context;

.field private 'iNewsOperator' Lcom/nd/android/forumsdk/operator/INewsOperator;

.method static <clinit>()V
new com/nd/android/u/news/controller/NewsManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/news/controller/NewsManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
iconst_1
anewarray com/nd/android/u/news/controller/NewsManager
dup
iconst_0
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aastore
putstatic com/nd/android/u/news/controller/NewsManager/$VALUES [Lcom/nd/android/u/news/controller/NewsManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
putstatic com/nd/android/u/news/controller/NewsManager/mContext Landroid/content/Context;
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
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getNewsOperator()Lcom/nd/android/forumsdk/operator/INewsOperator;
putfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
return
.limit locals 3
.limit stack 3
.end method

.method private getHistoryNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
iload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsHomePageFromLocal(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private getNewestNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
iload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsHomePage(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static setContext(Landroid/content/Context;)V
aload 0
putstatic com/nd/android/u/news/controller/NewsManager/mContext Landroid/content/Context;
return
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/news/controller/NewsManager;
ldc com/nd/android/u/news/controller/NewsManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/news/controller/NewsManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/news/controller/NewsManager;
getstatic com/nd/android/u/news/controller/NewsManager/$VALUES [Lcom/nd/android/u/news/controller/NewsManager;
invokevirtual [Lcom/nd/android/u/news/controller/NewsManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/news/controller/NewsManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public cancelPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/cancelPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public createPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/createPicPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/createPraise(J)Lcom/nd/android/forumsdk/business/bean/result/PraiseInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
lload 3
iload 5
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 5
areturn
.limit locals 6
.limit stack 6
.end method

.method public getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getMoreNewsHomePage(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 3
astore 4
aload 0
aload 4
iconst_0
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Z)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
lload 3
iload 5
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getMoreTopicNewsList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 5
astore 6
aload 0
aload 6
iconst_0
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Z)V
aload 6
areturn
.limit locals 7
.limit stack 6
.end method

.method public getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getNewsHomePage(ZI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
iload 1
ifeq L0
aload 0
iload 2
invokespecial com/nd/android/u/news/controller/NewsManager/getNewestNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
astore 3
L1:
iload 1
ifne L2
iconst_1
istore 1
L3:
aload 0
aload 3
iload 1
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Z)V
aload 3
areturn
L0:
aload 0
iload 2
invokespecial com/nd/android/u/news/controller/NewsManager/getHistoryNewsList(I)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
astore 3
goto L1
L2:
iconst_0
istore 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method public getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
iload 3
iload 4
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getPicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getTopicNewsDetail(J)Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
iload 3
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getTopicNewsList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList; 3
astore 4
aload 0
aload 4
iconst_0
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Z)V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public initNewsReadStatus(Lcom/nd/android/forumsdk/business/bean/result/ResultNewsList;Z)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/isSuccess()Z
ifeq L0
aload 0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultNewsList/getData()Ljava/util/List;
invokevirtual com/nd/android/u/news/controller/NewsManager/initNewsReadStatus(Ljava/util/List;)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public initNewsReadStatus(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
getstatic com/nd/android/u/news/controller/NewsManager/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/business/db/dao/NewsDatabase/getInstance(Landroid/content/Context;)Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
invokevirtual com/nd/android/u/news/business/db/dao/NewsDatabase/getReadedNewsIdList()Ljava/util/List;
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/forumsdk/business/bean/result/NewsInfoBean
astore 3
aload 2
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getPostId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L3
aload 3
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setObj(Ljava/lang/Object;)V
goto L2
L3:
aload 3
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/setObj(Ljava/lang/Object;)V
goto L2
.limit locals 4
.limit stack 3
.end method

.method public postComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
getfield com/nd/android/u/news/controller/NewsManager/iNewsOperator Lcom/nd/android/forumsdk/operator/INewsOperator;
lload 1
aload 3
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/postNewsComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public setReadFlagToDb(J)V
getstatic com/nd/android/u/news/controller/NewsManager/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/business/db/dao/NewsDatabase/getInstance(Landroid/content/Context;)Lcom/nd/android/u/news/business/db/dao/NewsDatabase;
lload 1
invokevirtual com/nd/android/u/news/business/db/dao/NewsDatabase/setReadStatus(J)V
return
.limit locals 3
.limit stack 3
.end method
