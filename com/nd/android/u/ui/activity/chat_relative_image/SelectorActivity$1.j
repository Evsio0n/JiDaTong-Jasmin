.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/initHeader()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
return
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/finish()V
return
.limit locals 2
.limit stack 1
.end method
