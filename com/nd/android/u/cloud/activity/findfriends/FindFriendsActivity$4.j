.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.inner class inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/ScrollView;
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$4/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1400(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/ScrollView;
invokevirtual android/widget/ScrollView/getBottom()I
invokevirtual android/widget/ScrollView/smoothScrollTo(II)V
return
.limit locals 1
.limit stack 3
.end method
