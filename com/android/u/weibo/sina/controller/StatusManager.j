.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/controller/StatusManager
.super com/android/u/weibo/sina/controller/BaseSinaManager
.inner class inner com/android/u/weibo/sina/controller/StatusManager$1
.inner class inner com/android/u/weibo/sina/controller/StatusManager$10
.inner class inner com/android/u/weibo/sina/controller/StatusManager$11
.inner class inner com/android/u/weibo/sina/controller/StatusManager$12
.inner class inner com/android/u/weibo/sina/controller/StatusManager$13
.inner class inner com/android/u/weibo/sina/controller/StatusManager$14
.inner class inner com/android/u/weibo/sina/controller/StatusManager$15
.inner class inner com/android/u/weibo/sina/controller/StatusManager$2
.inner class inner com/android/u/weibo/sina/controller/StatusManager$3
.inner class inner com/android/u/weibo/sina/controller/StatusManager$4
.inner class inner com/android/u/weibo/sina/controller/StatusManager$5
.inner class inner com/android/u/weibo/sina/controller/StatusManager$6
.inner class inner com/android/u/weibo/sina/controller/StatusManager$7
.inner class inner com/android/u/weibo/sina/controller/StatusManager$8
.inner class inner com/android/u/weibo/sina/controller/StatusManager$9

.field private static 'sTokenEx' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.field private static 'statusList_friends' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field private static 'statusList_public' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field private static 'statusManager' Lcom/android/u/weibo/sina/controller/StatusManager;

.field private 'commentsAPI' Lcom/android/u/weibo/sina/business/comm/CommentsAPI;

.field private 'mGroupManager' Lcom/android/u/weibo/sina/controller/GroupManager;

.field private 'statusesAPI' Lcom/android/u/weibo/sina/business/comm/StatusesAPI;

.method static <clinit>()V
aconst_null
putstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putstatic com/android/u/weibo/sina/controller/StatusManager/statusList_friends Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putstatic com/android/u/weibo/sina/controller/StatusManager/statusList_public Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial com/android/u/weibo/sina/controller/BaseSinaManager/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
aload 0
aconst_null
putfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/StatusManager/mContext Landroid/content/Context;
aload 0
new com/android/u/weibo/sina/business/comm/StatusesAPI
dup
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokespecial com/android/u/weibo/sina/business/comm/StatusesAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
putfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
aload 0
new com/android/u/weibo/sina/business/comm/CommentsAPI
dup
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokespecial com/android/u/weibo/sina/business/comm/CommentsAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
putfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
aload 0
new com/android/u/weibo/sina/business/comm/AccountAPI
dup
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokespecial com/android/u/weibo/sina/business/comm/AccountAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
putfield com/android/u/weibo/sina/controller/StatusManager/mAccountAPI Lcom/android/u/weibo/sina/business/comm/AccountAPI;
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/getLimitStatus(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokestatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getInstance(Landroid/content/Context;JLjava/lang/String;)Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
putfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ldc "tweet_user"
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/clear(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ldc "comment"
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/clear(Ljava/lang/String;)V
aload 0
aload 1
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokestatic com/android/u/weibo/sina/controller/GroupManager/getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/GroupManager;
putfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
return
.limit locals 2
.limit stack 5
.end method

.method static synthetic access$000()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
getstatic com/android/u/weibo/sina/controller/StatusManager/statusList_public Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
putstatic com/android/u/weibo/sina/controller/StatusManager/statusList_public Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
getstatic com/android/u/weibo/sina/controller/StatusManager/statusList_friends Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static clearInstance()V
getstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
ifnull L0
getstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ldc "tweet_following"
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/clear(Ljava/lang/String;)V
invokestatic com/android/u/weibo/sina/business/bean/SinaGroupList/clearInstance()V
aconst_null
putstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
L0:
return
.limit locals 0
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/StatusManager;
getstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
ifnonnull L0
aload 1
putstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
new com/android/u/weibo/sina/controller/StatusManager
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/StatusManager/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
L1:
getstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
putfield com/android/u/weibo/sina/controller/StatusManager/mContext Landroid/content/Context;
getstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
areturn
L0:
getstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 1
putstatic com/android/u/weibo/sina/controller/StatusManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aconst_null
putstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
new com/android/u/weibo/sina/controller/StatusManager
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/StatusManager/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/sina/controller/StatusManager/statusManager Lcom/android/u/weibo/sina/controller/StatusManager;
goto L1
.limit locals 2
.limit stack 3
.end method

.method private getMore(JJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getmore:id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",since_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",max_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iconst_0
aload 7
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
lload 1
lconst_0
lload 5
lconst_1
lsub
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$9
dup
aload 0
aload 7
aload 8
lload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$9/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;J)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/show(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 9
.limit stack 17
.end method

.method private getMoreRetweet(JJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getmore:id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",since_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",max_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iconst_0
aload 7
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
lconst_0
lload 5
lconst_1
lsub
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$10
dup
aload 0
aload 7
aload 8
lload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$10/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;J)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/repostTimeline(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 9
.limit stack 17
.end method

.method public addSinaFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
aload 3
aload 4
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addSinaFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public addToGroup(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
lload 3
aload 5
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addToGroup(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 6
.limit stack 6
.end method

.method public addToGroup(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
aload 3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addToGroup(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method public addToGroupBatch(J[JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
aload 3
aload 4
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addToGroupBatch(J[JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 5
.limit stack 5
.end method

.method public delComment(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_2
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
lload 1
new com/android/u/weibo/sina/controller/StatusManager$14
dup
aload 0
aload 3
invokespecial com/android/u/weibo/sina/controller/StatusManager$14/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 7
.end method

.method public delStatus(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_1
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
new com/android/u/weibo/sina/controller/StatusManager$6
dup
aload 0
aload 3
invokespecial com/android/u/weibo/sina/controller/StatusManager$6/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/destroy(JLcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 7
.end method

.method public getOlderCommentList(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getReplyInfoList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 9
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L0
aload 5
iconst_0
aload 9
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L1:
return
L0:
aload 9
aload 9
lload 3
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/getTweetIDByTimestamp(J)J
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/indexOfTweet(J)I
iconst_1
iadd
istore 6
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "total size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",index="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
iload 6
isub
bipush 20
if_icmplt L2
aload 5
iconst_0
aload 9
iload 6
iload 6
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L2:
aload 0
iconst_0
aload 5
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifne L1
lconst_0
lstore 7
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifne L3
aload 9
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
lconst_1
lsub
lstore 7
L3:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "index="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",oldestID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 7
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",timestamp="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
lload 1
lconst_0
lload 7
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$11
dup
aload 0
aload 5
aload 9
iload 6
invokespecial com/android/u/weibo/sina/controller/StatusManager$11/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;I)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/show(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 10
.limit stack 16
.end method

.method public getOlderRetweetList(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getRepostTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 9
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L0
aload 5
iconst_0
aload 9
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L1:
return
L0:
aload 9
aload 9
lload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/getTweetIDByTimestamp(J)J
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/indexOfTweet(J)I
iconst_1
iadd
istore 6
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "total size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",index="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iload 6
isub
bipush 20
if_icmplt L2
aload 5
iconst_0
aload 9
iload 6
iload 6
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L2:
aload 0
iconst_0
aload 5
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifne L1
lconst_0
lstore 7
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L3
aload 9
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_1
lsub
lstore 7
L3:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "index="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",oldestID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 7
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",timestamp="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
lconst_0
lload 7
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$12
dup
aload 0
aload 5
aload 9
iload 6
invokespecial com/android/u/weibo/sina/controller/StatusManager$12/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;I)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/repostTimeline(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 10
.limit stack 16
.end method

.method public getOlderStatusList_friends(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
aload 3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/getOlderGroupFriendsTimeLine(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method public getOlderStatusList_user(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getUserTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 9
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",get old data from user_tweetlist:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L0
aload 5
iconst_0
aload 9
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L1:
return
L0:
aload 0
iconst_0
aload 5
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifne L1
aload 9
lload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/getTweetIDByTimestamp(J)J
lstore 3
aload 9
lload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/indexOfTweet(J)I
iconst_1
iadd
istore 6
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iload 6
isub
bipush 20
if_icmplt L2
aload 5
iconst_0
aload 9
iload 6
iload 6
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L2:
aload 9
aload 9
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_1
lsub
lstore 7
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "statusID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",maxId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 7
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",real uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
lconst_0
lload 7
bipush 20
iconst_1
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
iconst_0
new com/android/u/weibo/sina/controller/StatusManager$2
dup
aload 0
aload 5
aload 9
lload 1
iload 6
invokespecial com/android/u/weibo/sina/controller/StatusManager$2/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;JI)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/userTimeline(JJJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 10
.limit stack 20
.end method

.method public postComment(Ljava/lang/String;JILcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_2
aload 5
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
aload 1
lload 2
iload 4
new com/android/u/weibo/sina/controller/StatusManager$13
dup
aload 0
aload 5
invokespecial com/android/u/weibo/sina/controller/StatusManager$13/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/create(Ljava/lang/String;JILcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 9
.end method

.method public postStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
iconst_1
aload 7
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
new com/android/u/weibo/sina/controller/StatusManager$4
dup
aload 0
aload 7
lload 5
invokespecial com/android/u/weibo/sina/controller/StatusManager$4/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;J)V
astore 7
aload 2
ifnull L1
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L1:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
aload 1
aload 3
aload 4
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
L2:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
aload 1
aload 2
aload 3
aload 4
aload 7
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 8
.limit stack 6
.end method

.method public refreshCommentList(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_0
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
lload 1
lconst_0
lconst_0
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$7
dup
aload 0
aload 3
lload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$7/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;J)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/show(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 16
.end method

.method public refreshGroup()V
.throws com/android/u/weibo/weibo/controller/NdWeiboException
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
invokevirtual com/android/u/weibo/sina/controller/GroupManager/refreshGroup()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshPraiseUserList(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_0
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public refreshRetweetList(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_0
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
lconst_0
lconst_0
bipush 20
iconst_1
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;
new com/android/u/weibo/sina/controller/StatusManager$8
dup
aload 0
aload 3
lload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$8/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;J)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/repostTimeline(JJJIILcom/android/u/weibo/sina/business/comm/WeiboAPI$AUTHOR_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 16
.end method

.method public refreshStatusList_friends(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
iload 1
aload 2
invokevirtual com/android/u/weibo/sina/controller/GroupManager/refreshGroupFriendsTimeLine(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 3
.limit stack 3
.end method

.method public refreshStatusList_public(Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_0
aload 1
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
bipush 20
iconst_1
iconst_0
new com/android/u/weibo/sina/controller/StatusManager$3
dup
aload 0
aload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$3/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/publicTimeline(IIZLcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 2
.limit stack 8
.end method

.method public refreshStatusList_user(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_0
aload 3
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
lconst_0
lconst_0
bipush 20
iconst_1
iconst_0
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE/ALL Lcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;
iconst_0
new com/android/u/weibo/sina/controller/StatusManager$1
dup
aload 0
aload 3
lload 1
invokespecial com/android/u/weibo/sina/controller/StatusManager$1/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;J)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/userTimeline(JJJIIZLcom/android/u/weibo/sina/business/comm/WeiboAPI$FEATURE;ZLcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 4
.limit stack 18
.end method

.method public replyComment(JJLjava/lang/String;IILcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_2
aload 8
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/commentsAPI Lcom/android/u/weibo/sina/business/comm/CommentsAPI;
lload 1
lload 3
aload 5
iload 6
iload 7
new com/android/u/weibo/sina/controller/StatusManager$15
dup
aload 0
aload 8
invokespecial com/android/u/weibo/sina/controller/StatusManager$15/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/CommentsAPI/reply(JJLjava/lang/String;IILcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 9
.limit stack 12
.end method

.method public repostStatus(JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_1
aload 5
invokevirtual com/android/u/weibo/sina/controller/StatusManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/statusesAPI Lcom/android/u/weibo/sina/business/comm/StatusesAPI;
lload 1
aload 3
aload 4
new com/android/u/weibo/sina/controller/StatusManager$5
dup
aload 0
aload 5
invokespecial com/android/u/weibo/sina/controller/StatusManager$5/<init>(Lcom/android/u/weibo/sina/controller/StatusManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/StatusesAPI/repost(JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 6
.limit stack 9
.end method

.method public sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/sina/controller/StatusManager/mGroupManager Lcom/android/u/weibo/sina/controller/GroupManager;
lload 1
aload 3
aload 4
invokevirtual com/android/u/weibo/sina/controller/GroupManager/sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 5
.limit stack 5
.end method
