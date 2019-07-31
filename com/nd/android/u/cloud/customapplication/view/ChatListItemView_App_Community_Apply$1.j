.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1
.super java/lang/Object
.implements android/content/DialogInterface$OnDismissListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;

.field final synthetic 'val$dialog' Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
aload 0
aload 2
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/val$dialog Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/val$dialog Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;
getfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/isCancel Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/val$dialog Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;
getfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/reason Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/reason Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
