.bytecode 50.0
.class final synchronized com/common/android/utils/InputMethodUtils$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/InputMethodUtils/collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
.inner class static final inner com/common/android/utils/InputMethodUtils$1

.field final synthetic 'val$context' Landroid/content/Context;

.field final synthetic 'val$windowToken' Landroid/os/IBinder;

.method <init>(Landroid/content/Context;Landroid/os/IBinder;)V
aload 0
aload 1
putfield com/common/android/utils/InputMethodUtils$1/val$context Landroid/content/Context;
aload 0
aload 2
putfield com/common/android/utils/InputMethodUtils$1/val$windowToken Landroid/os/IBinder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/utils/InputMethodUtils$1/val$context Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
getfield com/common/android/utils/InputMethodUtils$1/val$windowToken Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
.limit locals 1
.limit stack 3
.end method
