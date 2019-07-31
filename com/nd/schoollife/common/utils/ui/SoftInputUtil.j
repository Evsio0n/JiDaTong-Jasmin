.bytecode 50.0
.class public synchronized com/nd/schoollife/common/utils/ui/SoftInputUtil
.super java/lang/Object

.field private 'mContext' Landroid/content/Context;

.field private 'mInputMethodManager' Landroid/view/inputmethod/InputMethodManager;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private initSoftInput()V
aload 0
getfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
ifnonnull L0
aload 0
aload 0
getfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mContext Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public changeSoftInput(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/initSoftInput()V
aload 0
getfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_1
iconst_1
invokevirtual android/view/inputmethod/InputMethodManager/toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public hideSoftInput(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/initSoftInput()V
aload 0
getfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public showSoftInput(Landroid/view/View;)V
aload 0
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/initSoftInput()V
aload 0
getfield com/nd/schoollife/common/utils/ui/SoftInputUtil/mInputMethodManager Landroid/view/inputmethod/InputMethodManager;
aload 1
iconst_1
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method
