.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private SendTask inner com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask outer com/android/u/weibo/weibo/ui/activity/TweetCommentActivity

.field private 'content' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
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
default : L3
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
getstatic com/android/u/weibo/R$string/weibo_comment_content_not_null I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/weibo_content_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
sipush 140
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
return
.limit locals 2
.limit stack 6
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
aload 0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/getWeiboEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
iconst_0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getWordCount(Ljava/lang/String;Z)[F
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L1:
aload 1
iconst_0
faload
ldc_w 140.0F
fcmpl
ifle L2
iconst_2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokestatic com/product/android/utils/ContentUtils/replaceAllInputAt(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
iconst_0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getWordCount(Ljava/lang/String;Z)[F
iconst_0
faload
ldc_w 255.0F
fcmpl
ifle L3
iconst_3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Z
ifne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "content"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "can_send"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "compose_more"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "rid"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
iconst_m1
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/setResult(ILandroid/content/Intent;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/finish()V
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)J
lconst_1
lcmp
iflt L2
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
ldc com/android/u/weibo/weibo/controller/PostTweetService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "retweet_id"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "compose_more"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Landroid/widget/CheckBox;
invokevirtual android/widget/CheckBox/isChecked()Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "content"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/content Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "is_only_sina"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;)Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "isFromOutside"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "weiboActionType"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetCommentActivity$SendTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetCommentActivity;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetCommentActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
goto L1
.limit locals 2
.limit stack 4
.end method
