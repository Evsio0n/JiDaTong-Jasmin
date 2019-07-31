.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/PostTweetService
.super android/app/IntentService
.inner class private NdCommentListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener outer com/android/u/weibo/weibo/controller/PostTweetService
.inner class private NdPostListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener outer com/android/u/weibo/weibo/controller/PostTweetService
.inner class private NdRepostListener inner com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener outer com/android/u/weibo/weibo/controller/PostTweetService
.inner class public WeiboActionType inner com/android/u/weibo/weibo/controller/PostTweetService$WeiboActionType outer com/android/u/weibo/weibo/controller/PostTweetService

.field private static final 'TAG' Ljava/lang/String; = "PostTweetService"

.field private 'manager' Lcom/android/u/weibo/weibo/controller/Manager;

.method public <init>()V
aload 0
ldc "PostTweetService"
invokespecial android/app/IntentService/<init>(Ljava/lang/String;)V
aload 0
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
putfield com/android/u/weibo/weibo/controller/PostTweetService/manager Lcom/android/u/weibo/weibo/controller/Manager;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/controller/PostTweetService;JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
lload 1
aload 3
invokespecial com/android/u/weibo/weibo/controller/PostTweetService/sendCommentBroadcast(JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/controller/PostTweetService;Ljava/lang/Object;Ljava/lang/String;J)V
aload 0
aload 1
aload 2
lload 3
invokespecial com/android/u/weibo/weibo/controller/PostTweetService/sendMessage(Ljava/lang/Object;Ljava/lang/String;J)V
return
.limit locals 5
.limit stack 5
.end method

.method private countTime(J)I
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
ldc2_w 1000L
ldiv
l2i
ireturn
.limit locals 3
.limit stack 4
.end method

.method private sendCommentBroadcast(JLcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
.catch org/json/JSONException from L0 to L1 using L2
new android/content/Intent
dup
ldc "refresh-local-comment"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "localCreateAt"
lload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ifnonnull L3
aload 5
ldc "createAt"
iconst_m1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L4:
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 5
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
L3:
ldc ""
astore 4
L0:
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 3
L1:
aload 5
ldc "comment"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L4
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
astore 3
goto L1
.limit locals 6
.limit stack 4
.end method

.method private sendMessage(Ljava/lang/Object;Ljava/lang/String;J)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
aload 2
aconst_null
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/showNotifyOnBar(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
aload 0
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/clearNotify(Landroid/content/Context;)V
new android/content/Intent
dup
ldc "refresh-local-tweet"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 1
ifnull L3
aload 1
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L3
ldc ""
astore 2
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
astore 1
L1:
aload 5
ldc "topicinfo"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L3:
lload 3
lconst_0
lcmp
ifeq L4
aload 5
ldc "localCreateAt"
lload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 5
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
L4:
aload 0
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/stopSelf()V
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
astore 1
goto L1
.limit locals 6
.limit stack 4
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
aload 1
ifnull L0
aload 1
ldc "weiboActionType"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 2
aload 1
ldc "retweet_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 3
aload 1
ldc "content"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 14
aload 1
ldc "img_paths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 15
aload 1
ldc "is_only_sina"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 11
aload 1
ldc "compose_more"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 12
aload 1
ldc "localCreateAt"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 5
aload 1
ldc "isFromOutside"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 13
invokestatic java/lang/System/currentTimeMillis()J
lstore 7
iload 2
ifne L1
aload 1
ldc "category"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 16
aload 1
ldc "is_360_pic"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 12
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService/manager Lcom/android/u/weibo/weibo/controller/Manager;
aload 16
aload 14
aload 15
aconst_null
aconst_null
iload 11
lload 5
iload 12
new com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener
dup
aload 0
lload 7
invokespecial com/android/u/weibo/weibo/controller/PostTweetService$NdPostListener/<init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;J)V
invokevirtual com/android/u/weibo/weibo/controller/Manager/postTweet(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZJZLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
L0:
return
L1:
iload 2
iconst_1
if_icmpne L2
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/controller/PostTweetService/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transpond_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aconst_null
invokestatic com/android/u/weibo/weibo/controller/NotificationMng/showNotifyOnBar(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
iload 12
iconst_1
if_icmpne L3
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/BOTH Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
astore 1
L4:
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService/manager Lcom/android/u/weibo/weibo/controller/Manager;
lload 3
aload 14
iload 11
aload 1
new com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener
dup
aload 0
lload 7
lload 3
iload 12
invokespecial com/android/u/weibo/weibo/controller/PostTweetService$NdRepostListener/<init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;JJZ)V
invokevirtual com/android/u/weibo/weibo/controller/Manager/repostTweet(JLjava/lang/String;ZLcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L3:
getstatic com/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE/NONE Lcom/android/u/weibo/sina/business/comm/WeiboAPI$COMMENTS_TYPE;
astore 1
goto L4
L2:
iload 2
iconst_2
if_icmpne L5
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService/manager Lcom/android/u/weibo/weibo/controller/Manager;
astore 1
iload 12
ifeq L6
iconst_1
istore 2
L7:
aload 1
aload 14
lload 3
iload 11
iload 2
lload 5
new com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener
dup
aload 0
lload 7
iload 13
iload 12
invokespecial com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/<init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;JZZ)V
invokevirtual com/android/u/weibo/weibo/controller/Manager/postComment(Ljava/lang/String;JZIJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
L6:
iconst_0
istore 2
goto L7
L5:
iload 2
iconst_3
if_icmpne L0
aload 1
ldc "rid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 9
aload 0
getfield com/android/u/weibo/weibo/controller/PostTweetService/manager Lcom/android/u/weibo/weibo/controller/Manager;
astore 1
iload 12
ifeq L8
iconst_1
istore 2
L9:
aload 1
lload 9
lload 3
iload 11
aload 14
iload 2
lload 5
new com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener
dup
aload 0
lload 7
iload 13
iload 12
invokespecial com/android/u/weibo/weibo/controller/PostTweetService$NdCommentListener/<init>(Lcom/android/u/weibo/weibo/controller/PostTweetService;JZZ)V
invokevirtual com/android/u/weibo/weibo/controller/Manager/replyComment(JJZLjava/lang/String;IJLcom/android/u/weibo/weibo/controller/NdPostOrReTweetListener;)V
return
L8:
iconst_0
istore 2
goto L9
.limit locals 17
.limit stack 17
.end method
