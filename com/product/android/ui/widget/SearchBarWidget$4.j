.bytecode 50.0
.class synchronized com/product/android/ui/widget/SearchBarWidget$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/product/android/ui/widget/SearchBarWidget/onFocusChange(Landroid/view/View;Z)V
.inner class inner com/product/android/ui/widget/SearchBarWidget$4

.field final synthetic 'this$0' Lcom/product/android/ui/widget/SearchBarWidget;

.field final synthetic 'val$isFocus' Z

.method <init>(Lcom/product/android/ui/widget/SearchBarWidget;Z)V
aload 0
aload 1
putfield com/product/android/ui/widget/SearchBarWidget$4/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
aload 0
iload 2
putfield com/product/android/ui/widget/SearchBarWidget$4/val$isFocus Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$4/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokevirtual com/product/android/ui/widget/SearchBarWidget/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
astore 1
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$4/val$isFocus Z
ifeq L0
aload 0
getfield com/product/android/ui/widget/SearchBarWidget$4/this$0 Lcom/product/android/ui/widget/SearchBarWidget;
invokevirtual com/product/android/ui/widget/SearchBarWidget/showInputStatus()V
L0:
return
.limit locals 2
.limit stack 2
.end method
