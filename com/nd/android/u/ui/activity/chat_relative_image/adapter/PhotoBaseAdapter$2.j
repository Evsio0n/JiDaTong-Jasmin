.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
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
ifne L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
iconst_0
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/isScrolling Z
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter;
iconst_1
putfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoBaseAdapter/isScrolling Z
return
.limit locals 3
.limit stack 2
.end method
