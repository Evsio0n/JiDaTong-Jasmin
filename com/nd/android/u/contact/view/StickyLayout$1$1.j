.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/StickyLayout$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/view/StickyLayout$1/run()V
.inner class inner com/nd/android/u/contact/view/StickyLayout$1
.inner class inner com/nd/android/u/contact/view/StickyLayout$1$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/view/StickyLayout$1;

.field final synthetic 'val$height' I

.method <init>(Lcom/nd/android/u/contact/view/StickyLayout$1;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/StickyLayout$1$1/this$1 Lcom/nd/android/u/contact/view/StickyLayout$1;
aload 0
iload 2
putfield com/nd/android/u/contact/view/StickyLayout$1$1/val$height I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1$1/this$1 Lcom/nd/android/u/contact/view/StickyLayout$1;
getfield com/nd/android/u/contact/view/StickyLayout$1/this$0 Lcom/nd/android/u/contact/view/StickyLayout;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout$1$1/val$height I
invokevirtual com/nd/android/u/contact/view/StickyLayout/setHeaderHeight(I)V
return
.limit locals 1
.limit stack 2
.end method
