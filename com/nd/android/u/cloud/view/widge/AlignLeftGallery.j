.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/AlignLeftGallery
.super android/widget/Gallery
.inner class public static abstract interface IOnItemClickListener inner com/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener outer com/nd/android/u/cloud/view/widge/AlignLeftGallery

.field private static final 'TAG' Ljava/lang/String; = "AlignLeftGallery"

.field private static 'firstChildPaddingLeft' I

.field private static 'firstChildWidth' I

.field private 'flag' Z

.field private 'mCamera' Landroid/graphics/Camera;

.field private 'mListener' Lcom/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener;

.field private 'mPaddingLeft' I

.field private 'mWidth' I

.field private 'offsetX' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/Gallery/<init>(Landroid/content/Context;)V
aload 0
new android/graphics/Camera
dup
invokespecial android/graphics/Camera/<init>()V
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/setStaticTransformationsEnabled(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/Gallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new android/graphics/Camera
dup
invokespecial android/graphics/Camera/<init>()V
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/view/widge/AlignLeftGallery/setAttributesValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/setStaticTransformationsEnabled(Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/Gallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new android/graphics/Camera
dup
invokespecial android/graphics/Camera/<init>()V
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/view/widge/AlignLeftGallery/setAttributesValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/setStaticTransformationsEnabled(Z)V
return
.limit locals 4
.limit stack 4
.end method

.method private setAttributesValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 1
aload 2
iconst_1
newarray int
dup
iconst_0
ldc_w 16842966
iastore
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
iconst_0
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mPaddingLeft I
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 3
.limit stack 6
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
aload 2
invokevirtual android/view/animation/Transformation/clear()V
aload 2
iconst_2
invokevirtual android/view/animation/Transformation/setTransformationType(I)V
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
invokevirtual android/graphics/Camera/save()V
aload 2
invokevirtual android/view/animation/Transformation/getMatrix()Landroid/graphics/Matrix;
astore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/flag Z
ifeq L0
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getWidth()I
putstatic com/nd/android/u/cloud/view/widge/AlignLeftGallery/firstChildWidth I
ldc "AlignLeftGallery"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "firstChildWidth = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/cloud/view/widge/AlignLeftGallery/firstChildWidth I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getPaddingLeft()I
putstatic com/nd/android/u/cloud/view/widge/AlignLeftGallery/firstChildPaddingLeft I
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/flag Z
L0:
aload 0
getstatic com/nd/android/u/cloud/view/widge/AlignLeftGallery/firstChildWidth I
iconst_2
idiv
getstatic com/nd/android/u/cloud/view/widge/AlignLeftGallery/firstChildPaddingLeft I
iadd
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mPaddingLeft I
iadd
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mWidth I
iconst_2
idiv
isub
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/offsetX I
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/offsetX I
i2f
fconst_0
fconst_0
invokevirtual android/graphics/Camera/translate(FFF)V
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
aload 1
invokevirtual android/graphics/Camera/getMatrix(Landroid/graphics/Matrix;)V
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mCamera Landroid/graphics/Camera;
invokevirtual android/graphics/Camera/restore()V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.catch java/lang/SecurityException from L0 to L1 using L2
.catch java/lang/NoSuchFieldException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L0 to L1 using L4
.catch java/lang/IllegalAccessException from L0 to L1 using L5
.catch java/lang/SecurityException from L6 to L7 using L2
.catch java/lang/NoSuchFieldException from L6 to L7 using L3
.catch java/lang/IllegalArgumentException from L6 to L7 using L4
.catch java/lang/IllegalAccessException from L6 to L7 using L5
ldc "AlignLeftGallery"
ldc "onSingleTapUp----------------------"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
ldc com/nd/android/u/cloud/view/widge/AlignLeftGallery
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ldc "mDownTouchPosition"
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 1
aload 0
invokevirtual java/lang/reflect/Field/getInt(Ljava/lang/Object;)I
istore 2
ldc "AlignLeftGallery"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mDownTouchPosition = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mListener Lcom/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener;
ifnull L7
L1:
iload 2
iflt L7
L6:
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mListener Lcom/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener;
iload 2
invokeinterface com/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener/onItemClick(I)V 1
L7:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/SecurityException/printStackTrace()V
goto L7
L3:
astore 1
aload 1
invokevirtual java/lang/NoSuchFieldException/printStackTrace()V
goto L7
L4:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L7
L5:
astore 1
aload 1
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
goto L7
.limit locals 3
.limit stack 3
.end method

.method protected onSizeChanged(IIII)V
ldc "AlignLeftGallery"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onSizeChanged------- w = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " h = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "oldw = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "oldh = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/flag Z
ifne L0
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mWidth I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/AlignLeftGallery/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mWidth I
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/flag Z
L0:
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/Gallery/onSizeChanged(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
ldc "AlignLeftGallery"
ldc "onTouchEvent----------------------"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/offsetX I
ineg
i2f
fconst_0
invokevirtual android/view/MotionEvent/offsetLocation(FF)V
aload 0
aload 1
invokespecial android/widget/Gallery/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public setOnItemClickListener(Lcom/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/AlignLeftGallery/mListener Lcom/nd/android/u/cloud/view/widge/AlignLeftGallery$IOnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method
