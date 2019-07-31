.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/NdWeiboManager
.super java/lang/Object
.inner class public static final enum UpdateType inner com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType outer com/android/u/weibo/weibo/controller/NdWeiboManager

.field private static '_instance' Lcom/android/u/weibo/weibo/controller/NdWeiboManager;

.field private 'mCommentSdk' Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;

.field private 'mContext' Landroid/content/Context;

.field private 'mPraiseSdk' Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;

.field private 'mRelationSdk' Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;

.field private 'mTagSdk' Lcom/android/u/weibo/weibo/business/comm/NdTagSdk;

.field private 'mTweetSdk' Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;

.field private 'mUserSdk' Lcom/android/u/weibo/weibo/business/comm/NdUserSdk;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 0
new com/android/u/weibo/weibo/business/comm/NdTweetSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdTweetSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
new com/android/u/weibo/weibo/business/comm/NdUserSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdUserSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mUserSdk Lcom/android/u/weibo/weibo/business/comm/NdUserSdk;
aload 0
new com/android/u/weibo/weibo/business/comm/NdCommentSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdCommentSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
new com/android/u/weibo/weibo/business/comm/NdTagSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdTagSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTagSdk Lcom/android/u/weibo/weibo/business/comm/NdTagSdk;
aload 0
new com/android/u/weibo/weibo/business/comm/NdPraiseSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdPraiseSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mPraiseSdk Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;
aload 0
new com/android/u/weibo/weibo/business/comm/NdRelationSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdRelationSdk/<init>()V
putfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
return
.limit locals 2
.limit stack 3
.end method

.method private deleteOldAudio(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;Z)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/uid J
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/type I
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 3
aload 3
ifnull L0
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
ifeq L0
iload 2
ifne L1
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
iconst_1
if_icmpne L1
L0:
return
L1:
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
if_icmpne L2
iload 2
ifeq L3
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
iconst_1
if_icmpeq L4
L3:
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
L2:
aload 3
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
if_icmpeq L0
L4:
new java/io/File
dup
aload 3
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 1
invokevirtual java/io/File/delete()Z
pop
return
.limit locals 4
.limit stack 4
.end method

.method private deleteOldAudioAndDbRecord(JIZ)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
iload 3
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 5
aload 5
ifnonnull L0
L1:
return
L0:
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
iconst_1
if_icmpne L2
iload 4
ifne L3
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
ifne L2
L3:
new java/io/File
dup
aload 5
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/getMsgVoiceLocal()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokevirtual java/io/File/exists()Z
ifeq L2
aload 6
invokevirtual java/io/File/delete()Z
pop
L2:
iload 4
ifne L4
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/state I
ifne L1
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
iload 3
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delFlowerMessageInfo(JI)V
return
.limit locals 7
.limit stack 4
.end method

.method private getFriendsTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getFriendTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 6
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setFriendTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L7:
aload 6
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 4
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method private getHashtagsListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 6
aconst_null
astore 5
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTagSdk Lcom/android/u/weibo/weibo/business/comm/NdTagSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 2
lload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdTagSdk/getTagTopicInfoList(Landroid/content/Context;Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 7
L1:
aload 7
astore 5
aload 7
astore 6
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 7
astore 5
aload 7
astore 6
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 2
aload 7
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTagTopicInfoList(Ljava/lang/String;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L7:
aload 7
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 6
areturn
.limit locals 8
.limit stack 5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager/_instance Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
ifnonnull L0
new com/android/u/weibo/weibo/controller/NdWeiboManager
dup
aload 0
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/weibo/controller/NdWeiboManager/_instance Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
L0:
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager/_instance Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
areturn
.limit locals 1
.limit stack 3
.end method

.method private getMcAtReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/getAtReplyInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 6
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setAtReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
L7:
aload 6
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method private getMcAtTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getAtTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 6
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setAtTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L7:
aload 6
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method private getMcPraiseListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mPraiseSdk Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/getPraiseList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 6
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setPraiseList(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
L7:
aload 6
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method private getMcReplyMeInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 5
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/getReplyMeInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 6
L1:
aload 6
astore 4
aload 6
astore 5
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 6
astore 4
aload 6
astore 5
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 6
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyMeList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
L7:
aload 6
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method private getPraisorListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L8 to L9 using L3
.catch org/json/JSONException from L10 to L11 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L10 to L11 using L3
.catch org/json/JSONException from L12 to L13 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L12 to L13 using L3
.catch org/json/JSONException from L14 to L15 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L14 to L15 using L3
aconst_null
astore 8
aconst_null
astore 6
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mPraiseSdk Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/getPraisorList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
astore 7
L1:
aload 7
ifnull L16
aload 7
astore 6
aload 7
astore 8
L4:
aload 7
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/size()I
ifle L16
L5:
aload 7
astore 6
aload 7
astore 8
L6:
aload 7
invokevirtual com/android/u/weibo/weibo/business/bean/PraisorList/iterator()Ljava/util/Iterator;
astore 9
L7:
aload 7
astore 6
aload 7
astore 8
L8:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L16
L9:
aload 7
astore 6
aload 7
astore 8
L10:
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/Praisor
lload 2
putfield com/android/u/weibo/weibo/business/bean/Praisor/tid J
L11:
goto L7
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 6
astore 9
L17:
aload 9
areturn
L16:
aload 7
astore 6
aload 7
astore 9
aload 7
astore 8
L12:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L17
L13:
aload 7
astore 6
aload 7
astore 8
L14:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 7
lload 2
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setPraisorList(Lcom/android/u/weibo/weibo/business/bean/PraisorList;J)V
L15:
aload 7
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 8
areturn
.limit locals 10
.limit stack 6
.end method

.method private getPublicTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch java/lang/IllegalStateException from L5 to L6 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch java/lang/IllegalStateException from L7 to L8 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L7 to L8 using L3
.catch org/json/JSONException from L7 to L8 using L4
aconst_null
astore 6
aconst_null
astore 7
aconst_null
astore 5
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getPublicTopicInfoList(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 4
L1:
aload 4
astore 5
aload 4
astore 6
aload 4
astore 7
L5:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L8
L6:
aload 4
astore 5
aload 4
astore 6
aload 4
astore 7
L7:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 4
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setPublicTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L8:
aload 4
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
aload 5
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 6
areturn
L4:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 7
areturn
.limit locals 8
.limit stack 4
.end method

.method private getReTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getRepostList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 6
.end method

.method private getReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L3
aconst_null
astore 7
aconst_null
astore 6
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/getReplyInfoList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 8
L1:
aload 8
astore 6
aload 8
astore 7
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 8
astore 6
aload 8
astore 7
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 8
lload 2
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setReplyInfoList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;J)V
L7:
aload 8
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 6
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 7
areturn
.limit locals 9
.limit stack 6
.end method

.method private getUserTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
aconst_null
astore 7
aconst_null
astore 6
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getUserTopicInfoList(Landroid/content/Context;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 8
L1:
aload 8
astore 6
aload 8
astore 7
L4:
aload 1
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/equals(Ljava/lang/Object;)Z
ifeq L7
L5:
aload 8
astore 6
aload 8
astore 7
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 2
aload 8
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setUserTopicInfoList(JLcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L7:
aload 8
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 6
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 7
areturn
.limit locals 9
.limit stack 6
.end method

.method private updateFlowerMsgInfoToDB(JILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
aload 4
ifnull L0
aload 0
aload 4
iconst_1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/deleteOldAudio(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;Z)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 4
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setFlowerMessageInfo(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
L0:
aload 0
lload 1
iload 3
iconst_0
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/deleteOldAudioAndDbRecord(JIZ)V
return
.limit locals 5
.limit stack 5
.end method

.method public addGlanceCount(Ljava/util/Set;)Z
.signature "(Ljava/util/Set<Ljava/lang/Long;>;)Z"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/addGlanceCount(Landroid/content/Context;Ljava/util/Set;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public checkUidIsMyFolling(J)Z
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/checkUidIsInAttention(J)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public closeDB()V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/closeDB()V
return
.limit locals 1
.limit stack 1
.end method

.method public delFlowerMessage(III)I
iconst_0
istore 4
iload 3
iconst_1
if_icmpeq L0
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
iload 1
iload 2
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/delFlowerMessage(Landroid/content/Context;II)I
istore 4
L0:
iload 4
ifne L1
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
iload 1
iconst_1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/deleteOldAudioAndDbRecord(JIZ)V
L1:
iload 4
ireturn
.limit locals 5
.limit stack 5
.end method

.method public deleteComment(JJ)Z
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
lload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/deleteReply(Landroid/content/Context;JJ)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 3
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/deleteReplyByRid(J)V
L1:
iconst_1
ireturn
L2:
astore 5
aload 5
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
L4:
iconst_0
ireturn
L3:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 6
.limit stack 6
.end method

.method public deleteSinaToken(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/deleteSinaToken(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
return
.limit locals 2
.limit stack 2
.end method

.method public deleteTopicInfo(J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/deleteTopicInfo(Landroid/content/Context;J)I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/deleteTopicInfo(J)V
L1:
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public followNd(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L1
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch java/lang/IllegalStateException from L5 to L6 using L1
.catch java/io/UnsupportedEncodingException from L5 to L6 using L2
.catch java/io/IOException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch java/lang/IllegalStateException from L7 to L8 using L1
.catch java/io/UnsupportedEncodingException from L7 to L8 using L2
.catch java/io/IOException from L7 to L8 using L3
.catch org/json/JSONException from L7 to L8 using L4
L0:
lload 1
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/isInBlackList(J)Z
ifeq L5
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iconst_m1
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/follow_fail_for_in_blacklist I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
astore 3
aload 3
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L9:
aconst_null
areturn
L5:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdol(Landroid/content/Context;J)Lcom/product/android/commonInterface/weibo/IdolList;
astore 3
L6:
aload 3
ifnull L9
L7:
aload 3
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ifle L9
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 3
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setIdolList(Lcom/product/android/commonInterface/weibo/IdolList;Z)V
L8:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L9
L3:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L9
L4:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L9
.limit locals 4
.limit stack 5
.end method

.method public followNd(Ljava/util/List;)Ljava/util/ArrayList;
.signature "(Ljava/util/List<Ljava/lang/Long;>;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
.catch java/lang/IllegalStateException from L6 to L7 using L2
.catch java/io/UnsupportedEncodingException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch org/json/JSONException from L6 to L7 using L5
aload 1
ifnull L8
aload 1
invokeinterface java/util/List/size()I 0
ifne L9
L8:
aconst_null
areturn
L9:
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/followNd(J)Ljava/util/ArrayList;
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/addIdols(Landroid/content/Context;Ljava/util/List;)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
L1:
aload 1
ifnull L10
L6:
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ifle L10
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setIdolList(Lcom/product/android/commonInterface/weibo/IdolList;Z)V
L7:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L10:
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L10
L4:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L10
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
.limit locals 2
.limit stack 3
.end method

.method public getAtListByRand(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
iconst_1
iload 1
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserList(ZII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getAttentionListFromNet(IJIII)Ljava/util/ArrayList;
.signature "(IJIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L4
.catch java/lang/IllegalStateException from L5 to L6 using L2
.catch org/json/JSONException from L5 to L6 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L5 to L6 using L4
.catch java/lang/IllegalStateException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L4
.catch java/lang/IllegalStateException from L8 to L9 using L2
.catch org/json/JSONException from L8 to L9 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L8 to L9 using L4
.catch java/lang/IllegalStateException from L9 to L10 using L2
.catch org/json/JSONException from L9 to L10 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L9 to L10 using L4
.catch java/lang/IllegalStateException from L11 to L12 using L2
.catch org/json/JSONException from L11 to L12 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L11 to L12 using L4
.catch java/lang/IllegalStateException from L12 to L13 using L2
.catch org/json/JSONException from L12 to L13 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L12 to L13 using L4
.catch java/lang/IllegalStateException from L13 to L14 using L2
.catch org/json/JSONException from L13 to L14 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L13 to L14 using L4
iload 6
tableswitch 0
L1
L7
L10
default : L15
L15:
iload 1
iconst_1
if_icmpne L13
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L1:
iload 1
iconst_1
if_icmpne L6
L5:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L6:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L7:
iload 1
iconst_1
if_icmpne L9
L8:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserListMinID()I
i2l
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L9:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserListMinID()I
i2l
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L10:
iload 1
iconst_1
if_icmpne L12
L11:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserListMaxID()I
i2l
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L12:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserListMaxID()I
i2l
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
L13:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 2
lconst_0
lconst_0
iload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
astore 7
L14:
aload 7
areturn
L2:
astore 7
aload 7
invokevirtual java/lang/IllegalStateException/printStackTrace()V
aconst_null
areturn
L3:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L4:
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 8
.limit stack 10
.end method

.method public getCommonFriend(II)Ljava/util/ArrayList;
.signature "(II)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;"
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
iload 1
iload 2
ldc2_w 9223372036854775807L
lconst_0
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getRecommend(Landroid/content/Context;IIJJ)Ljava/util/ArrayList;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/lang/IllegalStateException/printStackTrace()V
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
L4:
astore 3
aload 3
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 8
.end method

.method public getFlowerInfoRecv(JJIILjava/lang/String;Ljava/util/ArrayList;)I
.signature "(JJIILjava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;)I"
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
lload 3
iload 5
iload 6
aload 7
aload 8
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFlowerInfoRecv(Landroid/content/Context;JJIILjava/lang/String;Ljava/util/ArrayList;)I
istore 5
L1:
iload 5
ireturn
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
L4:
iconst_0
ireturn
L3:
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 9
.limit stack 9
.end method

.method public getFlowerInfoSend(JIILjava/lang/String;Ljava/util/ArrayList;)I
.signature "(JIILjava/lang/String;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;)I"
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
iload 3
iload 4
aload 5
aload 6
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFlowerInfoSend(Landroid/content/Context;JIILjava/lang/String;Ljava/util/ArrayList;)I
istore 3
L1:
iload 3
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L4:
iconst_0
ireturn
L3:
astore 5
aload 5
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 7
.limit stack 7
.end method

.method public getFlowerLeft()I
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
sipush 20000
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFlowerLeft(Landroid/content/Context;I)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
L4:
iconst_m1
ireturn
L3:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 3
.limit stack 2
.end method

.method public getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aconst_null
astore 4
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
iload 3
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFlowerMessage(Landroid/content/Context;JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 5
L1:
aload 5
astore 4
L3:
aload 0
lload 1
iload 3
aload 5
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/updateFlowerMsgInfoToDB(JILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
L4:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public getFlowerRank(IJIIJ)Ljava/util/ArrayList;
.signature "(IJIIJ)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
iload 1
lload 2
iload 4
iload 5
lload 6
lconst_0
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getUserFlowersRank(Landroid/content/Context;IJIIJJ)Ljava/util/ArrayList;
astore 8
L1:
aload 8
areturn
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 9
.limit stack 10
.end method

.method public getFollowingList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
iconst_0
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserList(ZII)Lcom/product/android/commonInterface/weibo/IdolList;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getFriendFlowersDesc(IJIIII)Ljava/util/ArrayList;
.signature "(IJIIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
iload 4
iload 5
iload 6
iload 7
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFriendFlowersDesc(Landroid/content/Context;IIII)Ljava/util/ArrayList;
astore 8
L1:
aload 8
areturn
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 9
.limit stack 5
.end method

.method public getItemCountInBacksystem(I)I
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
iload 1
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getFlowerLeft(Landroid/content/Context;I)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
L4:
iconst_0
ireturn
L3:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 3
.limit stack 2
.end method

.method public getNewCommentList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 3
.limit stack 6
.end method

.method public getNewFriendsTopicInfoList(Z)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getFriendsTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFriendsTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getNewHashtagsList(ZLjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
aload 2
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getHashtagsListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 2
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTagTopicInfoList(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 5
.end method

.method public getNewMcAtReplyInfoList(Z)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAtReplyInfoList()Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 3
aload 3
astore 2
aload 3
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L1
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewMcAtTopicInfoList(Z)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAtTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 3
aload 3
astore 2
aload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L1
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewMcPraiseList(Z)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcPraiseListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getPraiseList()Lcom/android/u/weibo/weibo/business/bean/PraiseList;
astore 3
aload 3
astore 2
aload 3
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
ifne L1
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcPraiseListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewMcReplyList(Z)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
iload 1
ifeq L0
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcReplyMeInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getReplyMeList()Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 3
aload 3
astore 2
aload 3
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
ifne L1
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcReplyMeInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getNewPraiseUserList(JZ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getPraisorListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
areturn
.limit locals 4
.limit stack 6
.end method

.method public getNewPublicTopicInfoList()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getPublicTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getNewRetweetList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getReTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 6
.end method

.method public getNewUserTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getUserTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 6
.end method

.method public getOldCommentList(JJ)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
lload 3
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 5
.limit stack 6
.end method

.method public getOldFriendsTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/NEW Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getFriendsTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldHashtagsList(Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
aload 1
lload 2
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getHashtagsListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;Ljava/lang/String;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 4
.limit stack 5
.end method

.method public getOldMcAtReplyInfoList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtReplyInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldMcAtTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcAtTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldMcPraiseList(J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcPraiseListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/PraiseList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldMcReplyList(J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getMcReplyMeInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldPraiseUserList(JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
lload 3
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getPraisorListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/PraisorList;
areturn
.limit locals 5
.limit stack 6
.end method

.method public getOldPublicTopicInfoList(J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getPublicTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;J)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getOldRetweetList(JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
lload 3
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getReTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 6
.end method

.method public getOldUserTopicInfoList(JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
lload 3
lconst_0
lcmp
ifne L0
aconst_null
areturn
L0:
aload 0
getstatic com/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType/OLDER Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;
lload 1
lload 3
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/getUserTopicInfoListFromNet(Lcom/android/u/weibo/weibo/controller/NdWeiboManager$UpdateType;JJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 5
.limit stack 6
.end method

.method public getRankAdData()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getRankAdData(Landroid/content/Context;)Ljava/util/List;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 2
.limit stack 1
.end method

.method public getRelationWithOther(J)I
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getRelationWithOther(Landroid/content/Context;J)I
istore 3
L1:
iload 3
ireturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getSinaBind()Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getSinaBind()Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTallys(Ljava/util/ArrayList;)Ljava/util/HashMap;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/u/weibo/weibo/business/bean/Tally;>;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/getTallys(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public getUserFlowerInfo(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
iconst_0
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getUserFlowerInfo(Landroid/content/Context;JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 3
aload 0
lload 1
iconst_1
aload 3
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/updateFlowerMsgInfoToDB(JILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 5
.end method

.method public getUserPageInfo(J)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
.catch org/json/JSONException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mUserSdk Lcom/android/u/weibo/weibo/business/comm/NdUserSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdUserSdk/getUserPageInfo(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L4
.limit locals 4
.limit stack 4
.end method

.method public getUserReceiveFlower(J)I
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
iconst_1
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/getUserFlowerInfo(Landroid/content/Context;JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 4
L1:
aload 4
ifnull L5
L3:
aload 4
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/receiveFlowerNum I
istore 3
L4:
iload 3
ireturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
L5:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getWeiboMsgUnreadCount()Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mUserSdk Lcom/android/u/weibo/weibo/business/comm/NdUserSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokevirtual com/android/u/weibo/weibo/business/comm/NdUserSdk/getWeiboMsgUnreadCount(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public likeWeibo(J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
iconst_0
istore 3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mPraiseSdk Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/praiseTopic(Landroid/content/Context;J)Z
istore 4
L1:
iload 4
ifeq L4
iload 4
istore 3
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
iconst_1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setLikeAttitudeInfo(JZ)V
L4:
iload 4
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
ireturn
.limit locals 6
.limit stack 4
.end method

.method public notlikeWeibo(J)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
iconst_0
istore 3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mPraiseSdk Lcom/android/u/weibo/weibo/business/comm/NdPraiseSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdPraiseSdk/unpraiseTopic(Landroid/content/Context;J)Z
istore 4
L1:
iload 4
ifeq L4
iload 4
istore 3
L3:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setLikeAttitudeInfo(JZ)V
L4:
iload 4
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
ireturn
.limit locals 6
.limit stack 4
.end method

.method public postComment(JLjava/lang/String;II)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 3
lload 1
iload 4
iload 5
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/postReplyInfo(Landroid/content/Context;Ljava/lang/String;JII)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L6:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L6
L4:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L6
L5:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 6
.limit stack 7
.end method

.method public postTopicInfo(Ljava/lang/String;Ljava/lang/String;FFLjava/util/ArrayList;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.signature "(Ljava/lang/String;Ljava/lang/String;FFLjava/util/ArrayList<Ljava/lang/String;>;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/io/IOException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L2
.catch org/json/JSONException from L1 to L4 using L3
.catch java/io/IOException from L5 to L6 using L2
.catch org/json/JSONException from L5 to L6 using L3
aload 5
ifnull L5
L0:
aload 5
invokevirtual java/util/ArrayList/size()I
ifle L5
aload 5
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 9
L1:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
new java/io/File
dup
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L1
aload 9
invokeinterface java/util/Iterator/remove()V 0
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L7:
aconst_null
areturn
L5:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
aload 2
aload 5
iload 6
lload 7
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/postTopicInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
L6:
aload 1
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L7
.limit locals 10
.limit stack 8
.end method

.method public replyComment(JJLjava/lang/String;III)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mCommentSdk Lcom/android/u/weibo/weibo/business/comm/NdCommentSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 5
lload 1
lload 3
iload 6
iload 7
iload 8
invokevirtual com/android/u/weibo/weibo/business/comm/NdCommentSdk/replyReplyInfo(Landroid/content/Context;Ljava/lang/String;JJIII)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 5
L1:
aload 5
areturn
L2:
astore 5
aload 5
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L6:
aconst_null
areturn
L3:
astore 5
aload 5
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L6
L4:
astore 5
aload 5
invokevirtual java/io/IOException/printStackTrace()V
goto L6
L5:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 9
.limit stack 10
.end method

.method public retweet(JLjava/lang/String;IJ)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mTweetSdk Lcom/android/u/weibo/weibo/business/comm/NdTweetSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 3
lload 1
lload 5
iload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdTweetSdk/repostTopicInfo(Landroid/content/Context;Ljava/lang/String;JJI)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L6:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L6
L4:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L6
L5:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 7
.limit stack 8
.end method

.method public searchFollowingList(Ljava/lang/String;)Ljava/util/ArrayList;
.signature "(Ljava/lang/String;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/Idol;>;"
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/searchAttentionUserList(Ljava/lang/String;II)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 4
.end method

.method public sendBatchFlower(JIJI)Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
iload 3
lload 4
iload 6
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/sendBatchFlower(Landroid/content/Context;JIJI)Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
astore 7
L1:
aload 7
areturn
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 8
.limit stack 7
.end method

.method public setFlowerMessage(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aconst_null
astore 2
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
invokestatic com/android/u/weibo/flower/business/comm/NdFlowerSdk/setFlowerMesasge(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 1
L1:
aload 1
ifnull L4
aload 1
astore 2
L3:
aload 0
aload 1
iconst_0
invokespecial com/android/u/weibo/weibo/controller/NdWeiboManager/deleteOldAudio(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;Z)V
L4:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public setSinaBind(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setSinaBind(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSinaUid(J)Z
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/io/UnsupportedEncodingException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L6
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mUserSdk Lcom/android/u/weibo/weibo/business/comm/NdUserSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdUserSdk/setSinaUid(Landroid/content/Context;J)Z
istore 3
L1:
iload 3
ireturn
L2:
astore 4
aload 4
invokevirtual java/lang/IllegalStateException/printStackTrace()V
iconst_0
ireturn
L3:
astore 4
aload 4
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
iconst_0
ireturn
L4:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L5:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L6:
astore 4
aload 4
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public unFollowNd(J)Lcom/product/android/commonInterface/weibo/IdolList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 3
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/delIdol(Landroid/content/Context;J)Lcom/product/android/commonInterface/weibo/IdolList;
astore 4
L1:
aload 4
astore 3
L3:
aload 3
ifnull L4
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
lload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delIdol(J)V
L4:
aload 3
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L3
.limit locals 5
.limit stack 4
.end method

.method public unFollowNd(Ljava/util/ArrayList;)Lcom/product/android/commonInterface/weibo/IdolList;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)Lcom/product/android/commonInterface/weibo/IdolList;"
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch java/lang/IllegalStateException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
aload 1
ifnull L6
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L0
L6:
aconst_null
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
aload 1
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/delIdol(Landroid/content/Context;J)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
L1:
aload 1
ifnull L7
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)V
L5:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalStateException/printStackTrace()V
L7:
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L7
.limit locals 2
.limit stack 4
.end method

.method public updateIdolList(J)V
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L8 to L9 using L2
.catch org/json/JSONException from L8 to L9 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L10 to L11 using L2
.catch org/json/JSONException from L10 to L11 using L3
.catch com/android/u/weibo/weibo/controller/WeiBoException from L12 to L13 using L2
.catch org/json/JSONException from L12 to L13 using L3
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
ldc "idol_list"
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getTSFromTimeStampTable(Ljava/lang/String;)J
lstore 5
iconst_1
istore 3
L0:
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
astore 8
L1:
lload 5
lconst_0
lcmp
ifle L12
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
lload 5
ldc2_w 9223372036854775807L
lconst_0
iload 3
i2l
ldc2_w 20L
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdolsChange(Landroid/content/Context;JJJJJJ)Lcom/product/android/commonInterface/weibo/IdolList;
astore 7
L5:
iload 3
istore 4
aload 7
ifnull L14
L6:
aload 8
aload 7
invokevirtual com/product/android/commonInterface/weibo/IdolList/addAll(Ljava/util/Collection;)Z
pop
L7:
iload 3
iconst_1
iadd
istore 4
L14:
aload 7
ifnull L9
iload 4
istore 3
L8:
aload 7
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
bipush 20
if_icmpge L1
L9:
aload 8
ifnull L15
L10:
aload 8
invokevirtual com/product/android/commonInterface/weibo/IdolList/isEmpty()Z
ifne L15
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 8
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/incrUpdateIdolList(Lcom/product/android/commonInterface/weibo/IdolList;)J
lstore 1
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
ldc "idol_list"
lload 1
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/setTimeStampTable(Ljava/lang/String;J)V
L11:
return
L12:
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mRelationSdk Lcom/android/u/weibo/weibo/business/comm/NdRelationSdk;
aload 0
getfield com/android/u/weibo/weibo/controller/NdWeiboManager/mContext Landroid/content/Context;
lload 1
ldc2_w 9223372036854775807L
lconst_0
iload 3
bipush 20
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getIdols(Landroid/content/Context;JJJII)Lcom/product/android/commonInterface/weibo/IdolList;
astore 7
L13:
goto L5
L2:
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
return
L3:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
L15:
return
.limit locals 9
.limit stack 14
.end method
