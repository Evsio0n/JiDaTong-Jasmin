.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/PetalView$DrawThread
.super java/lang/Thread
.inner class public static DrawThread inner com/nd/android/u/ui/widge/lift/PetalView$DrawThread outer com/nd/android/u/ui/widge/lift/PetalView

.field private final 'SLEEPTIME' I

.field private 'canvas' Landroid/graphics/Canvas;

.field protected 'isDrawFlag' Z

.field private 'mPetalView' Lcom/nd/android/u/ui/widge/lift/PetalView;

.field private 'mSurfaceHolder' Landroid/view/SurfaceHolder;

.method public <init>(Lcom/nd/android/u/ui/widge/lift/PetalView;Landroid/view/SurfaceHolder;)V
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_4
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/SLEEPTIME I
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
aload 0
aload 2
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/isDrawFlag Z
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L1 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch all from L9 to L10 using L5
.catch java/lang/Exception from L10 to L2 using L2
.catch all from L10 to L2 using L3
.catch all from L11 to L12 using L3
L13:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/isDrawFlag Z
ifeq L14
L0:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
aconst_null
invokeinterface android/view/SurfaceHolder/lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas; 1
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
astore 1
aload 1
monitorenter
L1:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mPetalView Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/doDraw(Landroid/graphics/Canvas;)V
aload 1
monitorexit
L4:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
ifnull L6
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
invokeinterface android/view/SurfaceHolder/unlockCanvasAndPost(Landroid/graphics/Canvas;)V 1
L6:
ldc2_w 4L
invokestatic java/lang/Thread/sleep(J)V
L7:
goto L13
L8:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L13
L5:
astore 2
L9:
aload 1
monitorexit
L10:
aload 2
athrow
L2:
astore 1
L11:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L12:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
ifnull L6
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
invokeinterface android/view/SurfaceHolder/unlockCanvasAndPost(Landroid/graphics/Canvas;)V 1
goto L6
L3:
astore 1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
ifnull L15
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/mSurfaceHolder Landroid/view/SurfaceHolder;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/canvas Landroid/graphics/Canvas;
invokeinterface android/view/SurfaceHolder/unlockCanvasAndPost(Landroid/graphics/Canvas;)V 1
L15:
aload 1
athrow
L14:
return
.limit locals 3
.limit stack 3
.end method
