.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2;

.field final synthetic 'val$detector' Landroid/view/GestureDetector;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2;Landroid/view/GestureDetector;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1/this$1 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1/val$detector Landroid/view/GestureDetector;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1/val$detector Landroid/view/GestureDetector;
aload 2
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 2
.end method
