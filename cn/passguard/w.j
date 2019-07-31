.bytecode 50.0
.class final synchronized cn/passguard/w
.super java/lang/Object
.implements android/view/View$OnTouchListener

.field private 'a' Ljava/lang/String;

.field private 'b' Landroid/view/View;

.field private synthetic 'c' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/w/c Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield cn/passguard/w/a Ljava/lang/String;
aload 0
aconst_null
putfield cn/passguard/w/b Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
ldc "passguard"
ldc "nc onTouch"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
astore 3
new android/graphics/Point
dup
aload 2
invokevirtual android/view/MotionEvent/getRawX()F
f2i
aload 2
invokevirtual android/view/MotionEvent/getRawY()F
f2i
invokespecial android/graphics/Point/<init>(II)V
astore 4
aload 0
getfield cn/passguard/w/c Lcn/passguard/k;
aload 4
aload 1
invokestatic cn/passguard/k/a(Lcn/passguard/k;Landroid/graphics/Point;Landroid/view/View;)Landroid/view/View;
astore 1
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_1
ireturn
L0:
ldc "passguard"
ldc "nc ACTION_DOWN"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ifnull L3
aload 0
aload 3
putfield cn/passguard/w/a Ljava/lang/String;
aload 0
aload 1
putfield cn/passguard/w/b Landroid/view/View;
aload 1
invokestatic android/os/SystemClock/uptimeMillis()J
invokestatic android/os/SystemClock/uptimeMillis()J
iconst_0
aload 1
invokevirtual android/view/View/getLeft()I
iconst_5
iadd
i2f
aload 1
invokevirtual android/view/View/getTop()I
iconst_5
iadd
i2f
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
invokevirtual android/view/View/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
goto L3
L1:
ldc "passguard"
ldc "nc ACTION_UP"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield cn/passguard/w/b Landroid/view/View;
ifnull L3
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokestatic android/os/SystemClock/uptimeMillis()J
invokestatic android/os/SystemClock/uptimeMillis()J
iconst_1
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokevirtual android/view/View/getLeft()I
iconst_5
iadd
i2f
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokevirtual android/view/View/getTop()I
iconst_5
iadd
i2f
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
invokevirtual android/view/View/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 0
aconst_null
putfield cn/passguard/w/b Landroid/view/View;
aload 0
ldc ""
putfield cn/passguard/w/a Ljava/lang/String;
goto L3
L2:
aload 0
getfield cn/passguard/w/a Ljava/lang/String;
aload 3
if_acmpeq L3
aload 0
getfield cn/passguard/w/b Landroid/view/View;
ifnull L3
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokestatic android/os/SystemClock/uptimeMillis()J
invokestatic android/os/SystemClock/uptimeMillis()J
iconst_1
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokevirtual android/view/View/getLeft()I
iconst_5
iadd
i2f
aload 0
getfield cn/passguard/w/b Landroid/view/View;
invokevirtual android/view/View/getTop()I
iconst_5
iadd
i2f
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
invokevirtual android/view/View/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 0
aconst_null
putfield cn/passguard/w/b Landroid/view/View;
aload 0
ldc ""
putfield cn/passguard/w/a Ljava/lang/String;
goto L3
.limit locals 5
.limit stack 9
.end method
