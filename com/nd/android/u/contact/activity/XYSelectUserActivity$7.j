.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$7
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1802(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Z)Z
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1802(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Z)Z
pop
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
pop
aload 1
invokevirtual android/widget/AbsListView/getCount()I
pop
iconst_0
istore 2
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iconst_1
isub
if_icmplt L4
iconst_1
istore 2
L4:
iconst_0
istore 3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getCount()I
istore 3
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1200(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
ifne L6
iload 2
ifeq L6
iload 3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)I
if_icmpge L6
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/moreSearchContact()V
return
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$700(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/refresh()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$1802(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;Z)Z
pop
return
.limit locals 4
.limit stack 3
.end method
