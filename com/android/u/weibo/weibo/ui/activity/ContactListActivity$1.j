.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/ContactListActivity$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/android/u/weibo/weibo/ui/activity/ContactListActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/ContactListActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 50
if_icmplt L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/ContactListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$204(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;)I
invokestatic com/android/u/weibo/weibo/ui/activity/ContactListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/ContactListActivity;Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 3
.end method
