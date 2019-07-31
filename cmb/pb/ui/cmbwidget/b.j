.bytecode 50.0
.class synchronized cmb/pb/ui/cmbwidget/b
.super android/os/Handler

.field final synthetic 'a' Lcmb/pb/ui/cmbwidget/CmbEditText;

.method public <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
aload 0
aload 1
putfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
ifnull L3
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/requestFocus()Z
pop
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
ifne L4
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "KeyCode"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 4
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getText()Landroid/text/Editable;
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getSelectionStart()I
iload 4
i2c
invokestatic java/lang/Character/toString(C)Ljava/lang/String;
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
return
L4:
invokestatic cmb/pb/ui/PBKeyboardActivity/c()Lcmb/pb/ui/PBKeyboardActivity;
invokevirtual cmb/pb/ui/PBKeyboardActivity/b()V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
ldc ""
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
iconst_0
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
return
L1:
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
ifnull L3
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/requestFocus()Z
pop
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
ifne L5
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "KeyString"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
aload 1
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V
return
L5:
invokestatic cmb/pb/ui/PBKeyboardActivity/c()Lcmb/pb/ui/PBKeyboardActivity;
invokevirtual cmb/pb/ui/PBKeyboardActivity/b()V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
ldc ""
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
iconst_0
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
return
L2:
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
iconst_0
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/b(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;
ifnull L3
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
astore 1
aload 1
ldc "rawX"
invokevirtual android/os/Bundle/getFloat(Ljava/lang/String;)F
fstore 2
aload 1
ldc "rawY"
invokevirtual android/os/Bundle/getFloat(Ljava/lang/String;)F
fstore 3
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;
invokestatic android/os/SystemClock/uptimeMillis()J
invokestatic android/os/SystemClock/uptimeMillis()J
iconst_0
fload 2
fload 3
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
invokevirtual android/app/Activity/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 0
getfield cmb/pb/ui/cmbwidget/b/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;
invokestatic android/os/SystemClock/uptimeMillis()J
invokestatic android/os/SystemClock/uptimeMillis()J
iconst_1
fload 2
fload 3
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
invokevirtual android/app/Activity/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
return
.limit locals 5
.limit stack 9
.end method
