.bytecode 50.0
.class public synchronized com/product/android/utils/ContentUtils$UrlImageSpan
.super android/text/style/ImageSpan
.inner class public static UrlImageSpan inner com/product/android/utils/ContentUtils$UrlImageSpan outer com/product/android/utils/ContentUtils

.field private 'mUrl' Ljava/lang/String;

.method public <init>(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
invokespecial android/text/style/ImageSpan/<init>(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getUrl()Ljava/lang/String;
aload 0
getfield com/product/android/utils/ContentUtils$UrlImageSpan/mUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/utils/ContentUtils$UrlImageSpan/mUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
