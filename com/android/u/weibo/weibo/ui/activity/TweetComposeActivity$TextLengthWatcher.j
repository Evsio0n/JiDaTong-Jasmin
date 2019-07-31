.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher
.super java/lang/Object
.implements android/text/TextWatcher
.inner class private TextLengthWatcher inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
ldc_w -16777216
ldc_w -65536
getstatic com/android/u/weibo/R$string/words_limit I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$1000(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/TextView;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/judgeLengthIsOutOfRang(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/TextView;)V
return
.limit locals 2
.limit stack 7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
