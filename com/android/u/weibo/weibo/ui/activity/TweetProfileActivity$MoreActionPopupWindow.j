.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow
.super com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow
.implements android/view/View$OnClickListener
.inner class private MoreActionPopupWindow inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field 'addToBlacklist' Landroid/widget/Button;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Landroid/view/View;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
aload 2
invokespecial com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow/<init>(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/back_home I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/toMainFrameMyProfile(Landroid/content/Context;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/finish()V
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/dismiss()V
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/at I
if_icmpne L2
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "content"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/nickName Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/uid J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/startActivity(Landroid/content/Intent;)V
goto L1
L2:
iload 2
getstatic com/android/u/weibo/R$id/add_to_blacklist I
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
ifeq L4
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_3
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L1
L4:
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)V
iconst_1
anewarray java/lang/Long
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L1
L3:
iload 2
getstatic com/android/u/weibo/R$id/hiddenlove I
if_icmpne L1
new com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/loading I
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetHiddenLoveMeTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
goto L1
.limit locals 3
.limit stack 6
.end method

.method protected onCreate()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/anchor Landroid/view/View;
invokevirtual android/view/View/getContext()Landroid/content/Context;
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/android/u/weibo/R$layout/weibo_profile_popup_window_other I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/android/u/weibo/R$id/back_home I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getstatic com/android/u/weibo/R$id/at I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getstatic com/android/u/weibo/R$id/hiddenlove I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/add_to_blacklist I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/addToBlacklist Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$3000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/addToBlacklist Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/add_to_black_list I
invokevirtual android/widget/Button/setText(I)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/addToBlacklist Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/setContentView(Landroid/view/View;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$MoreActionPopupWindow/addToBlacklist Landroid/widget/Button;
getstatic com/android/u/weibo/R$string/move_out_black_list I
invokevirtual android/widget/Button/setText(I)V
goto L1
.limit locals 2
.limit stack 3
.end method
