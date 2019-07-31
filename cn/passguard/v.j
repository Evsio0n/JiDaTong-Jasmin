.bytecode 50.0
.class final synchronized cn/passguard/v
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/v/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
ldc "passguard"
ldc "onTouch"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
astore 7
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_0
ireturn
L0:
aload 1
iconst_2
newarray int
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 1
invokevirtual android/view/View/getWidth()I
pop
aload 1
invokevirtual android/view/View/getHeight()I
pop
aload 0
getfield cn/passguard/v/a Lcn/passguard/k;
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L3
aload 7
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L3
aload 7
ldc " "
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L3
aload 1
checkcast android/widget/Button
ldc ""
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
ireturn
L1:
aload 0
getfield cn/passguard/v/a Lcn/passguard/k;
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L3
aload 7
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L3
aload 7
ldc " "
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L3
aload 0
getfield cn/passguard/v/a Lcn/passguard/k;
invokestatic cn/passguard/k/m(Lcn/passguard/k;)Lcn/passguard/I;
aload 7
invokevirtual cn/passguard/I/c(Ljava/lang/String;)V
aload 1
checkcast android/widget/Button
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
ireturn
L2:
aload 2
invokevirtual android/view/MotionEvent/getRawX()F
f2i
istore 3
aload 2
invokevirtual android/view/MotionEvent/getRawY()F
f2i
istore 4
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 2
aload 1
aload 2
invokevirtual android/view/View/getGlobalVisibleRect(Landroid/graphics/Rect;)Z
pop
iconst_2
newarray int
astore 8
aload 1
aload 8
invokevirtual android/view/View/getLocationOnScreen([I)V
aload 8
iconst_0
iaload
istore 5
aload 8
iconst_1
iaload
istore 6
iload 3
iload 5
if_icmplt L4
iload 3
iload 5
aload 2
getfield android/graphics/Rect/right I
iadd
aload 2
getfield android/graphics/Rect/left I
isub
if_icmpgt L4
iload 4
iload 6
if_icmplt L4
iload 4
aload 2
getfield android/graphics/Rect/bottom I
iload 6
iadd
aload 2
getfield android/graphics/Rect/top I
isub
if_icmple L3
L4:
aload 0
getfield cn/passguard/v/a Lcn/passguard/k;
getstatic cn/passguard/y/d Lcn/passguard/y;
invokevirtual cn/passguard/k/a(Lcn/passguard/y;)Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifne L3
aload 7
invokevirtual java/lang/String/length()I
iconst_1
if_icmpne L3
aload 7
ldc " "
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifeq L3
aload 0
getfield cn/passguard/v/a Lcn/passguard/k;
invokestatic cn/passguard/k/m(Lcn/passguard/k;)Lcn/passguard/I;
aload 7
invokevirtual cn/passguard/I/c(Ljava/lang/String;)V
aload 1
checkcast android/widget/Button
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
ireturn
.limit locals 9
.limit stack 3
.end method
