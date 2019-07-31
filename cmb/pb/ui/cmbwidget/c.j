.bytecode 50.0
.class synchronized cmb/pb/ui/cmbwidget/c
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field final synthetic 'a' Lcmb/pb/ui/cmbwidget/CmbEditText;

.method private <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
aload 0
aload 1
putfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/c;)V
aload 0
aload 1
invokespecial cmb/pb/ui/cmbwidget/c/<init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
iconst_1
istore 3
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
iconst_2
aaload
ifnull L0
aload 2
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L0
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
astore 1
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getWidth()I
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getPaddingRight()I
isub
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/c(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
isub
i2f
fcmpl
ifle L1
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getWidth()I
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/getPaddingRight()I
isub
i2f
fcmpg
ifge L1
L2:
aload 1
iload 3
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
ifeq L0
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/b()V
L0:
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokestatic cmb/pb/ui/cmbwidget/CmbEditText/b(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
ifne L3
aload 0
getfield cmb/pb/ui/cmbwidget/c/a Lcmb/pb/ui/cmbwidget/CmbEditText;
invokevirtual cmb/pb/ui/cmbwidget/CmbEditText/c()V
L3:
iconst_0
ireturn
L1:
iconst_0
istore 3
goto L2
.limit locals 4
.limit stack 3
.end method
