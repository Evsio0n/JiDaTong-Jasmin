.bytecode 50.0
.class public synchronized com/product/android/ui/activity/BaseActivity
.super com/product/android/ui/activity/BaseReceiveActivity

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseActivity/setSavedData(Landroid/os/Bundle;)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected goTo(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
aload 0
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/product/android/ui/activity/BaseActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
new android/content/Intent
dup
aload 0
aload 1
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public hideSoftInput()V
aload 0
invokevirtual com/product/android/ui/activity/BaseActivity/getCurrentFocus()Landroid/view/View;
astore 1
aload 1
ifnull L0
aload 1
instanceof android/widget/EditText
ifeq L0
aload 0
aload 1
checkcast android/widget/EditText
invokevirtual com/product/android/ui/activity/BaseActivity/hideSoftInput(Landroid/widget/EditText;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public hideSoftInput(Landroid/widget/EditText;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "input_method"
invokevirtual com/product/android/ui/activity/BaseActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L1:
return
L2:
astore 1
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "hideSoftInput:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initComponentValue()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initEvent()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokevirtual com/product/android/ui/activity/BaseActivity/_onCreate(Landroid/os/Bundle;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onPause()V
aload 0
invokevirtual com/product/android/ui/activity/BaseActivity/unRegisterReceiverBroad()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onResume()V
aload 0
invokevirtual com/product/android/ui/activity/BaseActivity/registerReceiverBroad()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic com/common/android/utils/HeapObserverUtils/check(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStop()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onStop()V
return
.limit locals 1
.limit stack 1
.end method

.method protected setSavedData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method public showSoftInput(Landroid/view/View;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
ldc "input_method"
invokevirtual com/product/android/ui/activity/BaseActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
L1:
return
L2:
astore 1
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "showSoftInput:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected toActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 3
aload 0
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/product/android/ui/activity/BaseActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected toActivity(Ljava/lang/Class;Z)V
.signature "(Ljava/lang/Class<*>;Z)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/product/android/ui/activity/BaseActivity/startActivity(Landroid/content/Intent;)V
iload 2
ifeq L0
aload 0
invokevirtual com/product/android/ui/activity/BaseActivity/finish()V
L0:
return
.limit locals 4
.limit stack 3
.end method
