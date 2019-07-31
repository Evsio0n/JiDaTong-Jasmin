.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/initComponent()V
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$1/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method
