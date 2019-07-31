.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/FloatView
.super android/widget/ImageView

.field private 'mClickListener' Landroid/view/View$OnClickListener;

.field private 'mStartX' F

.field private 'mStartY' F

.field private 'mTouchX' F

.field private 'mTouchY' F

.field private 'windowManager' Landroid/view/WindowManager;

.field private 'windowManagerParams' Landroid/view/WindowManager$LayoutParams;

.field private 'x' F

.field private 'y' F

.method public <init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
putfield com/nd/android/u/cloud/view/widge/FloatView/windowManager Landroid/view/WindowManager;
aload 0
aload 2
putfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
return
.limit locals 3
.limit stack 3
.end method

.method private updateViewPosition()V
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/x F
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mTouchX F
fsub
f2i
putfield android/view/WindowManager$LayoutParams/x I
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/y F
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mTouchY F
fsub
f2i
putfield android/view/WindowManager$LayoutParams/y I
ldc "tag"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "windowManagerParams.x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
getfield android/view/WindowManager$LayoutParams/x I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "====windowManagerParams.y"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
getfield android/view/WindowManager$LayoutParams/y I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
getfield android/view/WindowManager$LayoutParams/gravity I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManager Landroid/view/WindowManager;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/windowManagerParams Landroid/view/WindowManager$LayoutParams;
invokeinterface android/view/WindowManager/updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V 2
return
.limit locals 1
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 3
aload 0
aload 3
invokevirtual com/nd/android/u/cloud/view/widge/FloatView/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 3
getfield android/graphics/Rect/top I
istore 2
getstatic java/lang/System/out Ljava/io/PrintStream;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "statusBarHeight:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual android/view/MotionEvent/getRawX()F
putfield com/nd/android/u/cloud/view/widge/FloatView/x F
aload 0
aload 1
invokevirtual android/view/MotionEvent/getRawY()F
iload 2
i2f
fsub
putfield com/nd/android/u/cloud/view/widge/FloatView/y F
ldc "tag"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "currX"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/x F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc "====currY"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/y F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
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
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
putfield com/nd/android/u/cloud/view/widge/FloatView/mTouchX F
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/nd/android/u/cloud/view/widge/FloatView/mTouchY F
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/x F
putfield com/nd/android/u/cloud/view/widge/FloatView/mStartX F
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/y F
putfield com/nd/android/u/cloud/view/widge/FloatView/mStartY F
ldc "tag"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "startX"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mTouchX F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc "====startY"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mTouchY F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L3
L2:
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FloatView/updateViewPosition()V
goto L3
L1:
aload 0
invokespecial com/nd/android/u/cloud/view/widge/FloatView/updateViewPosition()V
aload 0
fconst_0
putfield com/nd/android/u/cloud/view/widge/FloatView/mTouchY F
aload 0
fconst_0
putfield com/nd/android/u/cloud/view/widge/FloatView/mTouchX F
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/x F
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mStartX F
fsub
ldc_w 5.0F
fcmpg
ifge L3
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/y F
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mStartY F
fsub
ldc_w 5.0F
fcmpg
ifge L3
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mClickListener Landroid/view/View$OnClickListener;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/view/widge/FloatView/mClickListener Landroid/view/View$OnClickListener;
aload 0
invokeinterface android/view/View$OnClickListener/onClick(Landroid/view/View;)V 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/FloatView/mClickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method
