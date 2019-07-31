.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/resetPopWindow()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/getInstance()Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/clearCache()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$600(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/photoList Ljava/util/List;
astore 1
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
iconst_2
putfield android/os/Message/what I
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 6
.limit stack 2
.end method
