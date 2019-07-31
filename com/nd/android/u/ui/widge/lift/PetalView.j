.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/PetalView
.super android/view/SurfaceView
.implements android/view/SurfaceHolder$Callback
.inner class public static DrawThread inner com/nd/android/u/ui/widge/lift/PetalView$DrawThread outer com/nd/android/u/ui/widge/lift/PetalView
.inner class public static PetalThread inner com/nd/android/u/ui/widge/lift/PetalView$PetalThread outer com/nd/android/u/ui/widge/lift/PetalView

.field protected static 'DIE_OUT_LINE' I

.field private 'isSelection' Z

.field private 'mDrawPetal' Lcom/nd/android/u/ui/widge/lift/Petal;

.field private 'mDrawThread' Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;

.field private 'mPaint' Landroid/graphics/Paint;

.field private 'mPetalList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/ui/widge/lift/Petal;>;"

.field protected 'mPetalSet' Lcom/nd/android/u/ui/widge/lift/PetalSet;

.field protected 'mPetalThread' Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;

.method static <clinit>()V
bipush 80
putstatic com/nd/android/u/ui/widge/lift/PetalView/DIE_OUT_LINE I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;IIZ)V
aload 0
aload 1
invokespecial android/view/SurfaceView/<init>(Landroid/content/Context;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/ui/widge/lift/PetalView/mPaint Landroid/graphics/Paint;
aload 0
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/getHolder()Landroid/view/SurfaceHolder;
aload 0
invokeinterface android/view/SurfaceHolder/addCallback(Landroid/view/SurfaceHolder$Callback;)V 1
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/setZOrderOnTop(Z)V
aload 0
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/getHolder()Landroid/view/SurfaceHolder;
bipush -3
invokeinterface android/view/SurfaceHolder/setFormat(I)V 1
getstatic com/nd/android/u/ui/widge/lift/PetalView/DIE_OUT_LINE I
iload 3
iadd
putstatic com/nd/android/u/ui/widge/lift/PetalView/DIE_OUT_LINE I
aload 0
new com/nd/android/u/ui/widge/lift/PetalView$DrawThread
dup
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/getHolder()Landroid/view/SurfaceHolder;
invokespecial com/nd/android/u/ui/widge/lift/PetalView$DrawThread/<init>(Lcom/nd/android/u/ui/widge/lift/PetalView;Landroid/view/SurfaceHolder;)V
putfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
aload 0
iload 4
putfield com/nd/android/u/ui/widge/lift/PetalView/isSelection Z
aload 0
new com/nd/android/u/ui/widge/lift/PetalSet
dup
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/isSelection Z
invokespecial com/nd/android/u/ui/widge/lift/PetalSet/<init>(Z)V
putfield com/nd/android/u/ui/widge/lift/PetalView/mPetalSet Lcom/nd/android/u/ui/widge/lift/PetalSet;
aload 0
new com/nd/android/u/ui/widge/lift/PetalView$PetalThread
dup
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/lift/PetalView/getResources()Landroid/content/res/Resources;
iload 2
invokespecial com/nd/android/u/ui/widge/lift/PetalView$PetalThread/<init>(Lcom/nd/android/u/ui/widge/lift/PetalView;Landroid/content/res/Resources;I)V
putfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
return
.limit locals 5
.limit stack 6
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
aload 1
iconst_0
getstatic android/graphics/PorterDuff$Mode/CLEAR Landroid/graphics/PorterDuff$Mode;
invokevirtual android/graphics/Canvas/drawColor(ILandroid/graphics/PorterDuff$Mode;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalSet Lcom/nd/android/u/ui/widge/lift/PetalSet;
getfield com/nd/android/u/ui/widge/lift/PetalSet/petalList Ljava/util/ArrayList;
putfield com/nd/android/u/ui/widge/lift/PetalView/mPetalList Ljava/util/ArrayList;
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalList Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/ui/widge/lift/Petal
putfield com/nd/android/u/ui/widge/lift/PetalView/mDrawPetal Lcom/nd/android/u/ui/widge/lift/Petal;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getX()I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getY()I
istore 4
aload 1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getImage()Landroid/graphics/Bitmap;
iload 3
i2f
iload 4
i2f
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 5
.limit stack 5
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
invokevirtual com/nd/android/u/ui/widge/lift/PetalView$PetalThread/isAlive()Z
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
invokevirtual com/nd/android/u/ui/widge/lift/PetalView$PetalThread/start()V
L1:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
invokevirtual com/nd/android/u/ui/widge/lift/PetalView$DrawThread/isAlive()Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
invokevirtual com/nd/android/u/ui/widge/lift/PetalView$DrawThread/start()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
iconst_0
putfield com/nd/android/u/ui/widge/lift/PetalView$DrawThread/isDrawFlag Z
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/PetalView/mDrawThread Lcom/nd/android/u/ui/widge/lift/PetalView$DrawThread;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
iconst_0
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/isPetalFlag Z
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/lift/PetalView/mPetalThread Lcom/nd/android/u/ui/widge/lift/PetalView$PetalThread;
L0:
return
.limit locals 2
.limit stack 2
.end method
