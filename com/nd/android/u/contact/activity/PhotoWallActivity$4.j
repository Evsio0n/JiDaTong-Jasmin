.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$4
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$4/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
100 : L0
300 : L1
default : L2
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$4/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/moveToNextPage()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$4/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokevirtual com/nd/android/u/contact/activity/PhotoWallActivity/initPhotoWallData()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$4/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$700(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)V
return
.limit locals 2
.limit stack 1
.end method
