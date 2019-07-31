.bytecode 50.0
.class public synchronized com/nd/android/u/contact/anim/Rotate3dAnimation
.super android/view/animation/Animation

.field private 'mCamera' Landroid/graphics/Camera;

.field private final 'mCenterX' F

.field private final 'mCenterY' F

.field private final 'mDepthZ' F

.field private final 'mFromDegrees' F

.field private final 'mReverse' Z

.field private final 'mToDegrees' F

.method public <init>(FFFFFZ)V
aload 0
invokespecial android/view/animation/Animation/<init>()V
aload 0
fload 1
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mFromDegrees F
aload 0
fload 2
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mToDegrees F
aload 0
fload 3
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCenterX F
aload 0
fload 4
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCenterY F
aload 0
fload 5
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mDepthZ F
aload 0
iload 6
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mReverse Z
return
.limit locals 7
.limit stack 2
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mFromDegrees F
fstore 3
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mToDegrees F
fstore 4
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCenterX F
fstore 5
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCenterY F
fstore 6
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCamera Landroid/graphics/Camera;
astore 7
aload 2
invokevirtual android/view/animation/Transformation/getMatrix()Landroid/graphics/Matrix;
astore 2
aload 7
invokevirtual android/graphics/Camera/save()V
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mReverse Z
ifeq L0
aload 7
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mDepthZ F
fload 1
fmul
invokevirtual android/graphics/Camera/translate(FFF)V
L1:
aload 7
fload 3
fload 4
fload 3
fsub
fload 1
fmul
fadd
invokevirtual android/graphics/Camera/rotateY(F)V
aload 7
aload 2
invokevirtual android/graphics/Camera/getMatrix(Landroid/graphics/Matrix;)V
aload 7
invokevirtual android/graphics/Camera/restore()V
aload 2
fload 5
fneg
fload 6
fneg
invokevirtual android/graphics/Matrix/preTranslate(FF)Z
pop
aload 2
fload 5
fload 6
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
return
L0:
aload 7
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/contact/anim/Rotate3dAnimation/mDepthZ F
fconst_1
fload 1
fsub
fmul
invokevirtual android/graphics/Camera/translate(FFF)V
goto L1
.limit locals 8
.limit stack 6
.end method

.method public final initialize(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/view/animation/Animation/initialize(IIII)V
aload 0
new android/graphics/Camera
dup
invokespecial android/graphics/Camera/<init>()V
putfield com/nd/android/u/contact/anim/Rotate3dAnimation/mCamera Landroid/graphics/Camera;
return
.limit locals 5
.limit stack 5
.end method
