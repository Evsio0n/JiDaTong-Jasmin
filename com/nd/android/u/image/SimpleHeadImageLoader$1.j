.bytecode 50.0
.class final synchronized com/nd/android/u/image/SimpleHeadImageLoader$1
.super java/lang/Object
.implements com/product/android/business/headImage/ProfileHeadImageCacheCallback
.enclosing method com/nd/android/u/image/SimpleHeadImageLoader/createImageViewCallback(Landroid/widget/ImageView;)Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
.inner class static final inner com/nd/android/u/image/SimpleHeadImageLoader$1

.field final synthetic 'val$imageView' Landroid/widget/ImageView;

.method <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
putfield com/nd/android/u/image/SimpleHeadImageLoader$1/val$imageView Landroid/widget/ImageView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
aload 1
aload 0
getfield com/nd/android/u/image/SimpleHeadImageLoader$1/val$imageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getTag()Ljava/lang/Object;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/image/SimpleHeadImageLoader$1/val$imageView Landroid/widget/ImageView;
aload 3
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L0:
return
.limit locals 4
.limit stack 2
.end method
