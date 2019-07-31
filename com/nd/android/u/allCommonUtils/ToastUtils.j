.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/ToastUtils
.super java/lang/Object
.inner class inner com/nd/android/u/allCommonUtils/ToastUtils$1
.inner class inner com/nd/android/u/allCommonUtils/ToastUtils$2

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/allCommonUtils/ToastUtils$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/allCommonUtils/ToastUtils$1/<init>(Landroid/content/Context;Landroid/os/IBinder;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public static display(I)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
iload 0
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public static display(Landroid/content/Context;I)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public static display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ifnull L0
aload 0
aload 1
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public static display(Ljava/lang/String;)V
aload 0
ifnonnull L0
return
L0:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
aload 0
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 3
.end method

.method public static displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
aload 0
ifnull L0
aload 0
aload 1
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public static hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 1
ifnonnull L0
return
L0:
aload 0
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/allCommonUtils/ToastUtils$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/allCommonUtils/ToastUtils$2/<init>(Landroid/content/Context;Landroid/view/View;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 5
.end method
