.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/Manager
.super java/lang/Object
.inner class inner com/android/u/weibo/weibo/controller/Manager$1
.inner class inner com/android/u/weibo/weibo/controller/Manager$10
.inner class inner com/android/u/weibo/weibo/controller/Manager$11
.inner class inner com/android/u/weibo/weibo/controller/Manager$12
.inner class inner com/android/u/weibo/weibo/controller/Manager$13
.inner class inner com/android/u/weibo/weibo/controller/Manager$14
.inner class inner com/android/u/weibo/weibo/controller/Manager$15
.inner class inner com/android/u/weibo/weibo/controller/Manager$16
.inner class inner com/android/u/weibo/weibo/controller/Manager$17
.inner class inner com/android/u/weibo/weibo/controller/Manager$18
.inner class inner com/android/u/weibo/weibo/controller/Manager$19
.inner class inner com/android/u/weibo/weibo/controller/Manager$2
.inner class inner com/android/u/weibo/weibo/controller/Manager$20
.inner class inner com/android/u/weibo/weibo/controller/Manager$21
.inner class inner com/android/u/weibo/weibo/controller/Manager$22
.inner class inner com/android/u/weibo/weibo/controller/Manager$23
.inner class inner com/android/u/weibo/weibo/controller/Manager$23$1
.inner class inner com/android/u/weibo/weibo/controller/Manager$24
.inner class inner com/android/u/weibo/weibo/controller/Manager$25
.inner class inner com/android/u/weibo/weibo/controller/Manager$26
.inner class inner com/android/u/weibo/weibo/controller/Manager$27
.inner class inner com/android/u/weibo/weibo/controller/Manager$28
.inner class inner com/android/u/weibo/weibo/controller/Manager$29
.inner class inner com/android/u/weibo/weibo/controller/Manager$3
.inner class inner com/android/u/weibo/weibo/controller/Manager$30
.inner class inner com/android/u/weibo/weibo/controller/Manager$4
.inner class inner com/android/u/weibo/weibo/controller/Manager$5
.inner class inner com/android/u/weibo/weibo/controller/Manager$5$1
.inner class inner com/android/u/weibo/weibo/controller/Manager$6
.inner class inner com/android/u/weibo/weibo/controller/Manager$6$1
.inner class inner com/android/u/weibo/weibo/controller/Manager$7
.inner class inner com/android/u/weibo/weibo/controller/Manager$8
.inner class inner com/android/u/weibo/weibo/controller/Manager$9
.inner class inner com/android/u/weibo/weibo/controller/Manager$9$1
.inner class public BindState inner com/android/u/weibo/weibo/controller/Manager$BindState outer com/android/u/weibo/weibo/controller/Manager

.field public static final 'BUSINESSID_DEL_COMMENT' I = 2003


.field public static final 'BUSINESSID_DEL_FAVORITES' I = 3003


.field public static final 'BUSINESSID_DEL_TEET' I = 1005


.field public static final 'BUSINESSID_GET_COMMENTLIST' I = 2001


.field public static final 'BUSINESSID_GET_OLDER_COMMENTLIST' I = 2005


.field public static final 'BUSINESSID_GET_OLDER_PRAIE_USER_LIST' I = 6002


.field public static final 'BUSINESSID_GET_OLDER_RETWEETLIST' I = 7002


.field public static final 'BUSINESSID_GET_OLDER_TEETLIST_FRIENDS' I = 1007


.field public static final 'BUSINESSID_GET_OLDER_TEETLIST_PUBLIC' I = 1009


.field public static final 'BUSINESSID_GET_OLDER_TEETLIST_USER' I = 1008


.field public static final 'BUSINESSID_GET_PRAISE_USER_LIST' I = 6001


.field public static final 'BUSINESSID_GET_RETWEETLIST' I = 7001


.field public static final 'BUSINESSID_GET_TEETINFO' I = 1003


.field public static final 'BUSINESSID_GET_TEETLIST_FAVORITES' I = 3001


.field public static final 'BUSINESSID_GET_TEETLIST_FRIENDS' I = 1001


.field public static final 'BUSINESSID_GET_TEETLIST_PUBLIC' I = 1000


.field public static final 'BUSINESSID_GET_TEETLIST_USER' I = 1002


.field public static final 'BUSINESSID_GET_USER' I = 4001


.field public static final 'BUSINESSID_GET_WEATHER' I = 5001


.field public static final 'BUSINESSID_POST_COMMENT' I = 2002


.field public static final 'BUSINESSID_POST_FAVORITES' I = 3002


.field public static final 'BUSINESSID_POST_TEET' I = 1004


.field public static final 'BUSINESSID_REPLY_COMMENT' I = 2004


.field public static final 'BUSINESSID_REPOST_TEET' I = 1006


.field public static final 'PAGE_SIZE' I = 20


.field public static final 'STATE_CHANGED' I = 1


.field public static final 'STATE_NORMAL' I = 0


.field public static final 'STATE_UNBIND' I = 2


.field private static volatile '_instance' Lcom/android/u/weibo/weibo/controller/Manager;

.field private 'isFriendGettingMore' Z

.field private 'isPublicGettingMore' Z

.field private 'mBindState' Lcom/android/u/weibo/weibo/controller/Manager$BindState;

.field private 'mContext' Landroid/content/Context;

.field private 'mLastToken' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.field private 'mbIsBind' Z

.field private 'mbIsGettingMore' Z

.field private 'mbIsRefreshingFriends' Z

.field private 'mbIsRefreshingPublic' Z

.field private 'mbIsRefreshingUser' Z

.field private 'sinaWeiboManager' Lcom/android/u/weibo/sina/controller/StatusManager;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingFriends Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingUser Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingPublic Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/isPublicGettingMore Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/isFriendGettingMore Z
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
aload 0
new com/android/u/weibo/weibo/controller/Manager$BindState
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$BindState/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
putfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
astore 2
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 2
ifnull L0
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
aload 0
aload 1
aload 2
invokestatic com/android/u/weibo/sina/controller/StatusManager/getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/StatusManager;
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
L0:
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingPublic Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingPublic Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1102(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;JIIJILcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
aload 1
lload 2
iload 4
iload 5
lload 6
iload 8
aload 9
invokespecial com/android/u/weibo/weibo/controller/Manager/postCommentInThread(Ljava/lang/String;JIIJILcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
.limit locals 10
.limit stack 10
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/controller/Manager;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/Manager$BindState;)Lcom/android/u/weibo/weibo/controller/Manager$BindState;
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/controller/Manager;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/isPublicGettingMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingFriends Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingFriends Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/isFriendGettingMore Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/isFriendGettingMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingUser Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/android/u/weibo/weibo/controller/Manager;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsRefreshingUser Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/android/u/weibo/weibo/controller/Manager;)Z
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/controller/Manager/mergeTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 3
.end method

.method private debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method private filterSinaTopicBySource(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
astore 2
aload 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/xiaoyou I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L2
aload 2
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/nd_91u I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
L2:
aload 1
invokeinterface java/util/Iterator/remove()V 0
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/android/u/weibo/weibo/controller/Manager/_instance Lcom/android/u/weibo/weibo/controller/Manager;
ifnonnull L3
ldc com/android/u/weibo/weibo/controller/Manager
monitorenter
L0:
getstatic com/android/u/weibo/weibo/controller/Manager/_instance Lcom/android/u/weibo/weibo/controller/Manager;
ifnonnull L1
new com/android/u/weibo/weibo/controller/Manager
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/weibo/controller/Manager/_instance Lcom/android/u/weibo/weibo/controller/Manager;
L1:
ldc com/android/u/weibo/weibo/controller/Manager
monitorexit
L3:
getstatic com/android/u/weibo/weibo/controller/Manager/_instance Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
putfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
getstatic com/android/u/weibo/weibo/controller/Manager/_instance Lcom/android/u/weibo/weibo/controller/Manager;
areturn
L2:
astore 0
L4:
ldc com/android/u/weibo/weibo/controller/Manager
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method private isSinaWeiBoNotBind()Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
astore 1
aload 1
ifnonnull L1
aload 0
ldc "======================SinaWeiBoNotBind"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iconst_1
ireturn
L1:
aload 0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
aload 1
invokestatic com/android/u/weibo/sina/controller/StatusManager/getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/StatusManager;
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private mergeTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 2
ifnull L0
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L1
L0:
aload 1
areturn
L1:
aload 1
ifnull L2
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L3
L2:
aload 2
areturn
L3:
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
pop
aload 1
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lstore 6
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/controller/Manager/filterSinaTopicBySource(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 4
iload 4
ifeq L0
aload 2
iload 4
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lload 6
lcmp
ifle L4
aload 1
iconst_0
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(ILjava/util/Collection;)Z
pop
L5:
aload 1
areturn
L4:
iconst_0
istore 3
L6:
iload 3
iload 4
if_icmpge L5
aload 2
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 8
aload 1
aload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/getAddPosOfItem(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)I
istore 5
iload 5
bipush -5
if_icmpne L7
aload 1
aload 2
iload 3
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(Ljava/util/Collection;)Z
pop
goto L5
L7:
iload 5
lookupswitch
-9 : L8
-1 : L9
default : L10
L10:
aload 1
iload 5
aload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
L8:
iload 3
iconst_1
iadd
istore 3
goto L6
L9:
aload 1
iconst_0
aload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
goto L8
.limit locals 9
.limit stack 4
.end method

.method private postComment(Ljava/lang/String;JZIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "postComment,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 4
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
aload 1
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
lload 2
iload 6
new com/android/u/weibo/weibo/controller/Manager$18
dup
aload 0
aload 9
lload 7
invokespecial com/android/u/weibo/weibo/controller/Manager$18/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;J)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/postComment(Ljava/lang/String;JILcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$19
dup
aload 0
aload 1
lload 2
iload 5
iload 6
lload 7
aload 9
invokespecial com/android/u/weibo/weibo/controller/Manager$19/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;JIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 10
.limit stack 12
.end method

.method private postCommentInThread(Ljava/lang/String;JIIJILcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 2
aload 1
iload 4
iload 5
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/postComment(JLjava/lang/String;II)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 1
L1:
invokestatic java/lang/Thread/interrupted()Z
ifeq L3
aload 9
ifnull L4
aload 9
iload 8
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/thread_interrupted_toast I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V
L4:
return
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
astore 1
goto L1
L3:
aload 1
ifnull L5
aload 9
iload 8
aload 1
aconst_null
lload 6
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
return
L5:
aload 9
iload 8
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
lload 6
invokevirtual com/android/u/weibo/weibo/controller/NdPostOrReTweetListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
return
.limit locals 10
.limit stack 6
.end method

.method private replyComment(JJZLjava/lang/String;IIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "replyComment,cid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 5
ifne L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$21
dup
aload 0
lload 3
lload 1
aload 6
iload 7
iload 8
iload 9
aload 12
lload 10
invokespecial com/android/u/weibo/weibo/controller/Manager$21/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLjava/lang/String;IIILcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;J)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
lload 3
aload 6
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
iload 9
iload 8
new com/android/u/weibo/weibo/controller/Manager$22
dup
aload 0
aload 12
invokespecial com/android/u/weibo/weibo/controller/Manager$22/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/replyComment(JJLjava/lang/String;IILcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 13
.limit stack 15
.end method

.method public addToGroup(JJ)V
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
lload 3
new com/android/u/weibo/weibo/controller/Manager$25
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$25/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addToGroup(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 5
.limit stack 8
.end method

.method public addToGroupBatch(J[J)V
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
aload 3
new com/android/u/weibo/weibo/controller/Manager$26
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$26/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addToGroupBatch(J[JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 4
.limit stack 7
.end method

.method public delComment(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
iload 5
ifne L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 1
lload 3
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/deleteComment(JJ)Z
ifeq L1
aload 6
sipush 2003
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L1:
aload 6
sipush 2003
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 3
new com/android/u/weibo/weibo/controller/Manager$20
dup
aload 0
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$20/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/delComment(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 7
.limit stack 7
.end method

.method public delTweet(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.throws com/android/u/weibo/weibo/controller/WeiBoException
iload 5
ifne L0
aload 6
sipush 1005
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/deleteTopicInfo(J)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
lload 3
lconst_0
lcmp
ifle L1
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L2
L1:
return
L2:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 3
new com/android/u/weibo/weibo/controller/Manager$13
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager$13/<init>(Lcom/android/u/weibo/weibo/controller/Manager;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/delStatus(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
new com/android/u/weibo/weibo/controller/Manager$14
dup
aload 0
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$14/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/delStatus(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 7
.limit stack 7
.end method

.method public follow(J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 3
iconst_1
invokevirtual com/android/u/weibo/weibo/controller/Manager/follow(Ljava/util/ArrayList;Z)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public follow(Ljava/util/ArrayList;Z)Z
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;Z)Z"
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/followNd(Ljava/util/List;)Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
lstore 3
lload 3
lconst_0
lcmp
ifeq L1
aload 0
lload 3
iload 2
invokevirtual com/android/u/weibo/weibo/controller/Manager/followSina(JZ)V
goto L1
L2:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public followSina(JZ)V
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
ldc ""
new com/android/u/weibo/weibo/controller/Manager$23
dup
aload 0
lload 1
iload 3
invokespecial com/android/u/weibo/weibo/controller/Manager$23/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JZ)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/addSinaFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 4
.limit stack 10
.end method

.method public getBindSinaUid()J
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lreturn
L0:
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getBindState(I)I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
astore 2
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnonnull L0
L1:
aload 0
aload 2
putfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 2
ifnonnull L2
aload 0
iconst_0
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
L2:
aload 2
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
iconst_1
if_icmpne L3
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
aload 0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
aload 2
invokestatic com/android/u/weibo/sina/controller/StatusManager/getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/StatusManager;
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
L3:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "friends="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",user="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",public="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 1
sipush 1001
if_icmpne L4
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
ireturn
L0:
aload 2
ifnonnull L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_2
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_2
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_2
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
goto L1
L5:
aload 2
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnonnull L6
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
goto L1
L6:
aload 2
ifnull L7
aload 2
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mLastToken Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
L7:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateFriends I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
goto L1
L4:
iload 1
sipush 1000
if_icmpne L8
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStatePublic I
ireturn
L8:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mBindState Lcom/android/u/weibo/weibo/controller/Manager$BindState;
getfield com/android/u/weibo/weibo/controller/Manager$BindState/bindStateUser I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getOlderCommentList(JZJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
ifeq L0
aload 0
ldc "thread running"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOlderCommentList,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 3
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
lload 6
new com/android/u/weibo/weibo/controller/Manager$15
dup
aload 0
aload 8
invokespecial com/android/u/weibo/weibo/controller/Manager$15/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/getOlderCommentList(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L1:
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$16
dup
aload 0
lload 1
lload 4
aload 8
invokespecial com/android/u/weibo/weibo/controller/Manager$16/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 9
.limit stack 9
.end method

.method public getOlderFriendsTimeline(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOlderFriendsTimeline,timestamp="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$4
dup
aload 0
lload 3
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$4/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 6
.limit stack 7
.end method

.method public getOlderPraiseUserList(JZJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
ifeq L0
aload 0
ldc "thread running"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$17
dup
aload 0
lload 1
lload 4
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$17/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 7
.limit stack 9
.end method

.method public getOlderPublicTimeline(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/isPublicGettingMore Z
ifeq L0
aload 0
ldc "threading running"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/isPublicGettingMore Z
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$2
dup
aload 0
lload 1
aload 3
invokespecial com/android/u/weibo/weibo/controller/Manager$2/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 4
.limit stack 7
.end method

.method public getOlderRetweetList(JZJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
ifeq L0
aload 0
ldc "thread running"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/controller/Manager/mbIsGettingMore Z
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOlderRetweetList,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 3
ifne L1
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$27
dup
aload 0
lload 1
lload 4
aload 8
invokespecial com/android/u/weibo/weibo/controller/Manager$27/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L1:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
lload 6
new com/android/u/weibo/weibo/controller/Manager$28
dup
aload 0
aload 8
invokespecial com/android/u/weibo/weibo/controller/Manager$28/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/getOlderRetweetList(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 9
.limit stack 9
.end method

.method public getOlderUserTimeline(JJJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$6
dup
aload 0
lload 1
lload 5
aload 9
lload 3
lload 7
invokespecial com/android/u/weibo/weibo/controller/Manager$6/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;JJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 10
.limit stack 13
.end method

.method public isBindSinaWeiBo()Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public postComment(Ljava/lang/String;JZIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
aload 1
lload 2
iload 4
iload 5
iconst_0
lload 6
aload 8
invokespecial com/android/u/weibo/weibo/controller/Manager/postComment(Ljava/lang/String;JZIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
.limit locals 9
.limit stack 10
.end method

.method public postTweet(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZJZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;ZJZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V"
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$9
dup
aload 0
aload 2
iload 6
aload 1
aload 3
iload 9
aload 10
lload 7
aload 4
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$9/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;ZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;JLjava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 11
.limit stack 14
.end method

.method public refreshCommentList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
iload 4
ifne L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$11
dup
aload 0
lload 1
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$11/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L0:
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L1
aload 5
sipush 2001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
ldc "sina weibo not bind"
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L1:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshCommentList ony sina,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
new com/android/u/weibo/weibo/controller/Manager$12
dup
aload 0
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$12/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/refreshCommentList(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 6
.limit stack 7
.end method

.method public refreshFriendsTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshFriendsTimeline,force="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$3
dup
aload 0
aload 2
iload 1
lload 3
invokespecial com/android/u/weibo/weibo/controller/Manager$3/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 5
.limit stack 8
.end method

.method public refreshGroup()V
.catch com/android/u/weibo/weibo/controller/NdWeiboException from L0 to L1 using L2
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
invokevirtual com/android/u/weibo/sina/controller/StatusManager/refreshGroup()V
L1:
return
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/printStackTrace()V
return
.limit locals 2
.limit stack 1
.end method

.method public refreshPublicTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getPublicTimeline,force="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
iload 1
ifeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$1
dup
aload 0
aload 2
lload 3
iload 1
invokespecial com/android/u/weibo/weibo/controller/Manager$1/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;JZ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 5
.limit stack 8
.end method

.method public refreshRetweetList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshRetweettList,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",force="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 4
ifne L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$29
dup
aload 0
lload 1
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$29/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L0:
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L1
aload 5
sipush 7001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
ldc "sina weibo not bind"
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L1:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshRetweetList ony sina,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
new com/android/u/weibo/weibo/controller/Manager$30
dup
aload 0
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$30/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/refreshRetweetList(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 6
.limit stack 7
.end method

.method public refreshUserTimeline(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
iload 5
ifeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$5
dup
aload 0
lload 1
lload 3
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$5/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 7
.limit stack 9
.end method

.method public refreshpRraiseUserList(JZZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshPraiseUserList,id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",force="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ",isOnlySina="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
iload 4
ifeq L0
aload 5
sipush 6001
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>()V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$10
dup
aload 0
lload 1
iload 3
aload 5
invokespecial com/android/u/weibo/weibo/controller/Manager$10/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 6
.limit stack 8
.end method

.method public replyComment(JJZLjava/lang/String;IJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
aload 0
lload 1
lload 3
iload 5
aload 6
iload 7
iconst_0
iconst_1
lload 8
aload 10
invokespecial com/android/u/weibo/weibo/controller/Manager/replyComment(JJZLjava/lang/String;IIIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
.limit locals 11
.limit stack 13
.end method

.method public repostTweet(JLjava/lang/String;ZLcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
iload 4
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
aload 3
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getOnlyAtContent(Ljava/lang/String;)Ljava/lang/String;
aload 5
new com/android/u/weibo/weibo/controller/Manager$7
dup
aload 0
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$7/<init>(Lcom/android/u/weibo/weibo/controller/Manager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/repostStatus(JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L0:
invokestatic com/common/android/utils/concurrent/NdExecutors/getTinyHttpThreadPool()Ljava/util/concurrent/ExecutorService;
new com/android/u/weibo/weibo/controller/Manager$8
dup
aload 0
lload 1
aload 3
aload 5
aload 6
invokespecial com/android/u/weibo/weibo/controller/Manager$8/<init>(Lcom/android/u/weibo/weibo/controller/Manager;JLjava/lang/String;Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 7
.limit stack 9
.end method

.method public setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lload 2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/setSinaUid(J)Z
istore 5
iload 5
ifeq L0
lload 2
lconst_0
lcmp
ifeq L1
iconst_1
istore 4
L2:
aload 0
iload 4
putfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mbIsBind Z
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
ifnonnull L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
aload 1
invokestatic com/android/u/weibo/sina/controller/StatusManager/getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/StatusManager;
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
L0:
iload 5
ireturn
L1:
iconst_0
istore 4
goto L2
L3:
aload 0
ldc "setSinaWeiBoUnbind"
invokespecial com/android/u/weibo/weibo/controller/Manager/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
ifnull L0
invokestatic com/android/u/weibo/sina/controller/StatusManager/clearInstance()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
iload 5
ireturn
.limit locals 6
.limit stack 4
.end method

.method public unFollow(J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 3
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 3
invokevirtual com/android/u/weibo/weibo/controller/Manager/unFollow(Ljava/util/ArrayList;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public unFollow(Ljava/util/ArrayList;)Z
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)Z"
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/unFollowNd(Ljava/util/ArrayList;)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
lstore 2
lload 2
lconst_0
lcmp
ifeq L1
aload 0
lload 2
invokevirtual com/android/u/weibo/weibo/controller/Manager/unFollowSina(J)V
goto L1
L2:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public unFollowSina(J)V
aload 0
invokespecial com/android/u/weibo/weibo/controller/Manager/isSinaWeiBoNotBind()Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/Manager/sinaWeiboManager Lcom/android/u/weibo/sina/controller/StatusManager;
lload 1
ldc ""
new com/android/u/weibo/weibo/controller/Manager$24
dup
aload 0
lload 1
invokespecial com/android/u/weibo/weibo/controller/Manager$24/<init>(Lcom/android/u/weibo/weibo/controller/Manager;J)V
invokevirtual com/android/u/weibo/sina/controller/StatusManager/sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 3
.limit stack 9
.end method
