.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/Petal
.super java/lang/Object

.field private 'Image' Landroid/graphics/Bitmap;

.field private 'horizontal_v' D

.field private 'startTime' D

.field private 'startX' I

.field private 'startY' I

.field private 'vertical_v' D

.field private 'x' I

.field private 'y' I

.method public <init>(Landroid/graphics/Bitmap;IIDDD)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Petal/Image Landroid/graphics/Bitmap;
aload 0
iload 2
putfield com/nd/android/u/ui/widge/lift/Petal/x I
aload 0
iload 3
putfield com/nd/android/u/ui/widge/lift/Petal/y I
aload 0
iload 2
putfield com/nd/android/u/ui/widge/lift/Petal/startX I
aload 0
iload 3
putfield com/nd/android/u/ui/widge/lift/Petal/startY I
aload 0
dload 4
putfield com/nd/android/u/ui/widge/lift/Petal/vertical_v D
aload 0
dload 6
putfield com/nd/android/u/ui/widge/lift/Petal/horizontal_v D
aload 0
dload 8
putfield com/nd/android/u/ui/widge/lift/Petal/startTime D
return
.limit locals 10
.limit stack 3
.end method

.method public getHorizontal_v()D
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/horizontal_v D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getImage()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/Image Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStartTime()D
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/startTime D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getStartX()I
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/startX I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStartY()I
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/startY I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getVertical_v()D
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/vertical_v D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getX()I
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/x I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getY()I
aload 0
getfield com/nd/android/u/ui/widge/lift/Petal/y I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setHorizontal_v(D)V
aload 0
dload 1
putfield com/nd/android/u/ui/widge/lift/Petal/horizontal_v D
return
.limit locals 3
.limit stack 3
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/lift/Petal/Image Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method public setStartTime(D)V
aload 0
dload 1
putfield com/nd/android/u/ui/widge/lift/Petal/startTime D
return
.limit locals 3
.limit stack 3
.end method

.method public setStartX(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Petal/startX I
return
.limit locals 2
.limit stack 2
.end method

.method public setStartY(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Petal/startY I
return
.limit locals 2
.limit stack 2
.end method

.method public setVertical_v(D)V
aload 0
dload 1
putfield com/nd/android/u/ui/widge/lift/Petal/vertical_v D
return
.limit locals 3
.limit stack 3
.end method

.method public setX(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Petal/x I
return
.limit locals 2
.limit stack 2
.end method

.method public setY(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/Petal/y I
return
.limit locals 2
.limit stack 2
.end method
