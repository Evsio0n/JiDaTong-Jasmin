.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/ConvertTweetListUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static convertPraiseList(Lcom/android/u/weibo/weibo/business/bean/PraiseList;)V
aload 0
ifnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/isEmpty()Z
ifeq L1
L0:
return
L1:
iconst_0
istore 1
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/size()I
istore 2
L2:
iload 1
iload 2
if_icmpge L0
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/PraiseList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/Praise
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 2
.end method

.method public static convertReply(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Z)V
aload 0
ifnonnull L0
L1:
return
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 3
aload 0
aload 3
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/contentSS Landroid/text/SpannableString;
iload 1
ifeq L1
ldc ""
astore 2
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
lconst_0
lcmp
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
getfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
iconst_1
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
getfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 2
aload 3
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/replydeil_someones_comment I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aastore
dup
iconst_1
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L4:
aload 0
aload 3
aload 2
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/sourceToSS Landroid/text/SpannableString;
return
L3:
aload 3
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/reply_has_lost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
lconst_0
lcmp
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
iconst_1
if_icmpne L6
aload 0
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 2
aload 3
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/comment_someones_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aastore
dup
iconst_1
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
goto L4
L6:
aload 3
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_has_lost I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
goto L4
L5:
ldc "MsgCommentListAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5f02\u5e38\u60c5\u51b5\uff1areply ="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
.limit locals 4
.limit stack 5
.end method

.method public static convertReplyTopicList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;Z)V
aload 0
ifnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/isEmpty()Z
ifeq L1
L0:
return
L1:
iconst_0
istore 2
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/size()I
istore 3
L2:
iload 2
iload 3
if_icmpge L0
aload 0
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
iload 1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertReply(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;Z)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 2
.end method

.method public static convertTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
aload 0
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 4
aload 0
aload 4
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L0
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
astore 5
aload 5
ifnull L1
aload 5
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lconst_0
lcmp
ifle L1
aload 5
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 5
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
astore 5
aload 2
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 3
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 4
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveAll(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/contentSS Landroid/text/SpannableString;
L0:
return
L1:
aload 2
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 3
aload 0
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
.limit locals 6
.limit stack 4
.end method

.method public static convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
ifnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifeq L1
L0:
return
L1:
iconst_0
istore 2
aload 0
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
istore 3
L2:
iload 2
iload 3
if_icmpge L0
aload 0
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
iload 1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;Z)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 2
.end method
