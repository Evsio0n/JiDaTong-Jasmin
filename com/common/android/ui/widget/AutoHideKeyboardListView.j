.bytecode 50.0
.class public synchronized com/common/android/ui/widget/AutoHideKeyboardListView
.super android/widget/ListView

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
aload 0
invokevirtual com/common/android/ui/widget/AutoHideKeyboardListView/getContext()Landroid/content/Context;
astore 2
aload 2
ifnull L0
aload 2
instanceof android/app/Activity
ifeq L0
aload 2
checkcast android/app/Activity
invokevirtual android/app/Activity/getCurrentFocus()Landroid/view/View;
astore 2
aload 2
ifnull L0
aload 0
invokevirtual com/common/android/ui/widget/AutoHideKeyboardListView/getContext()Landroid/content/Context;
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 2
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
aload 1
invokespecial android/widget/ListView/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
