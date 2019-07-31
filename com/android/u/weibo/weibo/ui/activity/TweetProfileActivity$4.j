.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
ifnonnull L0
getstatic com/android/u/weibo/R$string/header_pic_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 0
L1
L2
L3
default : L4
L4:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
getstatic com/android/u/weibo/R$string/portrait_error_picture I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendUpdateAvaBroadCast(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$HeaderViewHolder/pbarAvatar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
getstatic com/android/u/weibo/R$string/header_pic_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 3
.end method
