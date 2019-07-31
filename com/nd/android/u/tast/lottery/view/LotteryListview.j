.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/view/LotteryListview
.super android/widget/ListView
.inner class public static abstract interface FilpperListener inner com/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener outer com/nd/android/u/tast/lottery/view/LotteryListview

.field private 'FilpperRight' Z

.field private 'Filpperleft' Z

.field private 'filpperListener' Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;

.field private 'myLastX' F

.field private 'myLastY' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
return
.limit locals 3
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
aload 1
invokespecial android/widget/ListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L0:
aload 0
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
goto L3
L2:
aload 1
aload 1
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
isub
invokevirtual android/view/MotionEvent/getX(I)F
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
fsub
fstore 2
aload 1
aload 1
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
isub
invokevirtual android/view/MotionEvent/getY(I)F
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 3
fload 2
f2d
ldc2_w 100.0D
dcmpl
ifle L4
fload 3
ldc_w 50.0F
fcmpg
ifge L4
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
aload 0
iconst_1
putfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
goto L3
L4:
fload 2
f2d
ldc2_w -100.0D
dcmpg
ifge L3
fload 3
ldc_w 50.0F
fcmpg
ifge L3
aload 0
iconst_1
putfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
goto L3
L1:
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/filpperListener Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;
ifnull L5
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
ifeq L6
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/filpperListener Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
invokeinterface com/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener/filpperLeft(FF)V 2
L5:
aload 0
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/reset()V
goto L3
L6:
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
ifeq L5
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/filpperListener Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
getfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
invokeinterface com/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener/filpperRight(FF)V 2
goto L5
.limit locals 4
.limit stack 4
.end method

.method public reset()V
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/Filpperleft Z
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/view/LotteryListview/FilpperRight Z
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastX F
aload 0
ldc_w -1.0F
putfield com/nd/android/u/tast/lottery/view/LotteryListview/myLastY F
return
.limit locals 1
.limit stack 2
.end method

.method public setFilpperListener(Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/LotteryListview/filpperListener Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;
return
.limit locals 2
.limit stack 2
.end method
