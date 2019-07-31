.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8
.super android/content/BroadcastReceiver
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 2
ldc "topicinfo"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 8
aload 2
ldc "localCreateAt"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
lstore 6
aconst_null
astore 2
aload 2
astore 1
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
L0:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
new org/json/JSONObject
dup
aload 8
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 1
L1:
aload 1
ifnull L3
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 2
iconst_1
istore 3
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/iterator()Ljava/util/Iterator;
astore 8
L4:
iload 3
istore 4
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lcmp
ifne L4
iconst_0
istore 4
L5:
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 5
iconst_0
istore 3
L6:
iload 3
iload 5
if_icmpge L7
aload 2
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 8
lconst_0
aload 8
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lcmp
ifne L8
lload 6
lconst_0
lcmp
ifeq L8
lload 6
aload 8
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
lcmp
ifne L8
iload 4
ifeq L9
aload 2
iload 3
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(ILjava/lang/Object;)V
L9:
iload 4
ifeq L10
iload 3
iconst_1
iadd
istore 3
L11:
aload 2
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 2
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L12
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 4
iconst_0
istore 3
L13:
iload 3
iload 4
if_icmpge L12
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
lload 6
lconst_0
lcmp
ifeq L14
lload 6
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
lcmp
ifne L14
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/remove(I)Ljava/lang/Object;
pop
L12:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
astore 1
goto L1
L10:
goto L11
L8:
iload 3
iconst_1
iadd
istore 3
goto L6
L14:
iload 3
iconst_1
iadd
istore 3
goto L13
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/iterator()Ljava/util/Iterator;
astore 1
L15:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
lload 6
lconst_0
lcmp
ifeq L15
lload 6
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
lcmp
ifne L15
aload 2
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isFailToSend Z
goto L12
.limit locals 9
.limit stack 4
.end method
