.bytecode 50.0
.class synchronized cmb/pb/ui/e
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field final synthetic 'a' Lcmb/pb/ui/PBKeyboardActivity;

.method <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
aload 0
aload 1
putfield cmb/pb/ui/e/a Lcmb/pb/ui/PBKeyboardActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
aload 0
getfield cmb/pb/ui/e/a Lcmb/pb/ui/PBKeyboardActivity;
aload 1
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/view/View;)V
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method
