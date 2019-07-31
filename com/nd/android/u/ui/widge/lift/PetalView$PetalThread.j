.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/PetalView$PetalThread
.super java/lang/Thread
.inner class public static PetalThread inner com/nd/android/u/ui/widge/lift/PetalView$PetalThread outer com/nd/android/u/ui/widge/lift/PetalView

.field private static final 'SLEEPTIME' I = 21


.field private static final 'SPAN' I = 1


.field protected 'isPetalFlag' Z

.field private 'mPetal' Lcom/nd/android/u/ui/widge/lift/Petal;

.field private 'mResources' Landroid/content/res/Resources;

.field protected 'num' I

.field private 'petalView' Lcom/nd/android/u/ui/widge/lift/PetalView;

.field private 'time' D

.field private 'width' I

.method public <init>(Lcom/nd/android/u/ui/widge/lift/PetalView;Landroid/content/res/Resources;I)V
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
bipush 7
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/num I
aload 0
dconst_0
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/petalView Lcom/nd/android/u/ui/widge/lift/PetalView;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/isPetalFlag Z
aload 0
aload 2
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mResources Landroid/content/res/Resources;
aload 0
iload 3
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/width I
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
L3:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/isPetalFlag Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/num I
i2d
drem
dconst_0
dcmpl
ifne L5
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/petalView Lcom/nd/android/u/ui/widge/lift/PetalView;
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalSet Lcom/nd/android/u/ui/widge/lift/PetalSet;
iconst_1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mResources Landroid/content/res/Resources;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/width I
invokevirtual com/nd/android/u/ui/widge/lift/PetalSet/add(IDLandroid/content/res/Resources;I)V
L5:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/petalView Lcom/nd/android/u/ui/widge/lift/PetalView;
getfield com/nd/android/u/ui/widge/lift/PetalView/mPetalSet Lcom/nd/android/u/ui/widge/lift/PetalSet;
getfield com/nd/android/u/ui/widge/lift/PetalSet/petalList Ljava/util/ArrayList;
astore 6
iconst_0
istore 3
L6:
iload 3
aload 6
invokevirtual java/util/ArrayList/size()I
if_icmpge L7
aload 0
aload 6
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/ui/widge/lift/Petal
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getStartTime()D
dsub
ldc2_w 4.0D
ddiv
dstore 1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getStartX()I
i2d
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getHorizontal_v()D
dload 1
dmul
dadd
d2i
istore 4
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getStartY()I
i2d
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
invokevirtual com/nd/android/u/ui/widge/lift/Petal/getVertical_v()D
dload 1
dmul
dadd
d2i
istore 5
iload 5
getstatic com/nd/android/u/ui/widge/lift/PetalView/DIE_OUT_LINE I
if_icmple L8
aload 6
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L8:
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
iload 4
invokevirtual com/nd/android/u/ui/widge/lift/Petal/setX(I)V
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/mPetal Lcom/nd/android/u/ui/widge/lift/Petal;
iload 5
invokevirtual com/nd/android/u/ui/widge/lift/Petal/setY(I)V
iload 3
iconst_1
iadd
istore 3
goto L6
L7:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
dconst_1
dadd
putfield com/nd/android/u/ui/widge/lift/PetalView$PetalThread/time D
L0:
ldc2_w 21L
invokestatic java/lang/Thread/sleep(J)V
L1:
goto L3
L2:
astore 6
aload 6
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L3
L4:
return
.limit locals 7
.limit stack 6
.end method
