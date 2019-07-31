.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private SendTask inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity

.field private 'bRetCode' I

.field private 'content' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
iload 1
tableswitch 1
L0
L1
L2
L3
L4
default : L5
L5:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
getstatic com/android/u/weibo/R$string/weibo_content_not_null I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 2000
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/retweet_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 2000
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1500(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Ljava/lang/String;)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/retweet_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1500(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1400(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
aload 0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getWeiboEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
iconst_0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getWordCount(Ljava/lang/String;Z)[F
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L3
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
lconst_0
lcmp
ifeq L4
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/transmit I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L4:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/just_share_images I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
goto L5
L1:
aload 1
iconst_0
faload
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
i2f
fcmpl
ifle L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
sipush 2000
if_icmpne L7
aload 0
iconst_2
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
L8:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L7:
aload 0
iconst_3
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
goto L8
L6:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
iconst_0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getWordCount(Ljava/lang/String;Z)[F
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
lconst_0
lcmp
ifle L9
aload 1
iconst_0
faload
ldc_w 255.0F
fcmpl
ifle L9
aload 0
iconst_5
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
goto L5
L9:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
lconst_0
lcmp
ifne L5
aload 1
iconst_0
faload
ldc_w 2000.0F
fcmpl
ifle L5
aload 0
iconst_4
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/bRetCode I
goto L5
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
new com/android/u/weibo/weibo/business/bean/TopicInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfo/<init>()V
astore 1
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
aload 1
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isSend360Pic Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
lconst_0
lcmp
ifne L0
new android/content/Intent
dup
ldc "add-local-tweet"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "is_only_sina"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "content"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/content Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "localCreateAt"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/localCreateAt J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "img_paths"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 2
ldc "is_360_pic"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isSend360Pic Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 2
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/mContext Landroid/content/Context;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/startPostTweetService(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZZLjava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/finish()V
return
.limit locals 3
.limit stack 5
.end method
