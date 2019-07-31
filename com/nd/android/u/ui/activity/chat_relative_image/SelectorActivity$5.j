.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/resetPopWindow()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
