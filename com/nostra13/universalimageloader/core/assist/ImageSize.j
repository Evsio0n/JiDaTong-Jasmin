.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/ImageSize
.super java/lang/Object

.field private static final 'SEPARATOR' Ljava/lang/String; = "x"

.field private static final 'TO_STRING_MAX_LENGHT' I = 9


.field private final 'height' I

.field private final 'width' I

.method public <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(III)V
aload 0
invokespecial java/lang/Object/<init>()V
iload 3
sipush 180
irem
ifne L0
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
return
L0:
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
return
.limit locals 4
.limit stack 2
.end method

.method public getHeight()I
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public scale(F)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
i2f
fload 1
fmul
f2i
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
i2f
fload 1
fmul
f2i
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
areturn
.limit locals 2
.limit stack 5
.end method

.method public scaleDown(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
iload 1
idiv
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
iload 1
idiv
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(II)V
areturn
.limit locals 2
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
bipush 9
invokespecial java/lang/StringBuilder/<init>(I)V
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/width I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nostra13/universalimageloader/core/assist/ImageSize/height I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
