.bytecode 50.0
.class public synchronized com/product/android/business/headImage/HeadImageCache
.super java/lang/Object

.field public static 'mDefaultBitmap' Landroid/graphics/Bitmap;

.field public static 'mDefaultBitmapSquare' Landroid/graphics/Bitmap;

.field public static 'mDefaultGrayBitmap' Landroid/graphics/Bitmap;

.field public static 'mDefaultUserShowBitmap' Landroid/graphics/Bitmap;

.field public static 'mDefaultUserShowBitmapSquare' Landroid/graphics/Bitmap;

.method static <clinit>()V
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokestatic com/product/android/business/headImage/HeadImageCache/drawableToBitmap(I)Landroid/graphics/Bitmap;
putstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmap Landroid/graphics/Bitmap;
getstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmap Landroid/graphics/Bitmap;
invokestatic com/common/android/utils/ImageUtils/toGrayImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
putstatic com/product/android/business/headImage/HeadImageCache/mDefaultGrayBitmap Landroid/graphics/Bitmap;
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head_square I
invokestatic com/product/android/business/headImage/HeadImageCache/drawableToBitmap(I)Landroid/graphics/Bitmap;
putstatic com/product/android/business/headImage/HeadImageCache/mDefaultBitmapSquare Landroid/graphics/Bitmap;
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head I
invokestatic com/product/android/business/headImage/HeadImageCache/drawableToBitmap(I)Landroid/graphics/Bitmap;
putstatic com/product/android/business/headImage/HeadImageCache/mDefaultUserShowBitmap Landroid/graphics/Bitmap;
getstatic com/nd/android/u/allcommon/R$drawable/default_usershow_head_square I
invokestatic com/product/android/business/headImage/HeadImageCache/drawableToBitmap(I)Landroid/graphics/Bitmap;
putstatic com/product/android/business/headImage/HeadImageCache/mDefaultUserShowBitmapSquare Landroid/graphics/Bitmap;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static drawableToBitmap(I)Landroid/graphics/Bitmap;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
iload 0
getstatic com/product/android/business/config/Configuration/DEFAULTFACEIMAGE I
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 3
.end method
