.bytecode 50.0
.class synchronized com/nd/teamfile/helper/FileIconLoader$DrawableHolder
.super com/nd/teamfile/helper/FileIconLoader$ImageHolder
.inner class private static DrawableHolder inner com/nd/teamfile/helper/FileIconLoader$DrawableHolder outer com/nd/teamfile/helper/FileIconLoader

.field 'drawableRef' Ljava/lang/ref/SoftReference; signature "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"

.method private <init>()V
aload 0
aconst_null
invokespecial com/nd/teamfile/helper/FileIconLoader$ImageHolder/<init>(Lcom/nd/teamfile/helper/FileIconLoader$1;)V
return
.limit locals 1
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/teamfile/helper/FileIconLoader$1;)V
aload 0
invokespecial com/nd/teamfile/helper/FileIconLoader$DrawableHolder/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public isNull()Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$DrawableHolder/drawableRef Ljava/lang/ref/SoftReference;
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setImage(Ljava/lang/Object;)V
aload 1
ifnonnull L0
aconst_null
astore 1
L1:
aload 0
aload 1
putfield com/nd/teamfile/helper/FileIconLoader$DrawableHolder/drawableRef Ljava/lang/ref/SoftReference;
return
L0:
new java/lang/ref/SoftReference
dup
aload 1
checkcast android/graphics/drawable/Drawable
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public setImageView(Landroid/widget/ImageView;)Z
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$DrawableHolder/drawableRef Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
aload 0
getfield com/nd/teamfile/helper/FileIconLoader$DrawableHolder/drawableRef Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/graphics/drawable/Drawable
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
