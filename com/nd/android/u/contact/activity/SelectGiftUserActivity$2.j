.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectGiftUserActivity$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/SelectGiftUserActivity
.inner class inner com/nd/android/u/contact/activity/SelectGiftUserActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
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
iconst_1
istore 3
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
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/canLoadHeader Z
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
iconst_1
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/canLoadHeader Z
aload 1
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getFooterViewsCount()I
istore 2
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iload 2
isub
istore 4
iload 4
iconst_1
isub
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
iload 2
isub
if_icmpne L4
iload 3
istore 2
L5:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$100(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Z
ifne L6
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$700(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
ifnull L6
iload 2
ifeq L6
iload 4
sipush 500
if_icmpge L6
iload 4
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$300(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)I
if_icmpeq L6
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectGiftUserActivity/moreSearchContact()V
return
L4:
iconst_0
istore 2
goto L5
L6:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectGiftUserActivity/access$700(Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/notifyDataSetChanged()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectGiftUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SelectGiftUserActivity;
iconst_0
putfield com/nd/android/u/contact/activity/SelectGiftUserActivity/canLoadHeader Z
return
.limit locals 5
.limit stack 3
.end method
