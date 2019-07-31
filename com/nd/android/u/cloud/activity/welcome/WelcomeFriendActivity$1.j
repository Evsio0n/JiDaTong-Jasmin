.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1
.super java/lang/Thread
.enclosing method com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/rightBtnHandle()V
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
invokestatic com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
invokestatic com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/getSelectedPerson()Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/follow(Ljava/util/List;Ljava/lang/StringBuilder;)Z
pop
L0:
return
.limit locals 2
.limit stack 4
.end method
