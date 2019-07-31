.bytecode 50.0
.class public synchronized com/common/android/utils/InputMethodUtils
.super java/lang/Object
.inner class static final inner com/common/android/utils/InputMethodUtils$1
.inner class static final inner com/common/android/utils/InputMethodUtils$2

.field private static final 'DELAY_TIME' I = 100


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
return
L1:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/common/android/utils/InputMethodUtils$1
dup
aload 0
aload 1
invokespecial com/common/android/utils/InputMethodUtils$1/<init>(Landroid/content/Context;Landroid/os/IBinder;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public static hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
ifnull L0
aload 1
ifnull L0
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnonnull L1
L0:
return
L1:
aload 0
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
return
L1:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/common/android/utils/InputMethodUtils$2
dup
aload 0
aload 1
invokespecial com/common/android/utils/InputMethodUtils$2/<init>(Landroid/content/Context;Landroid/view/View;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 5
.end method
