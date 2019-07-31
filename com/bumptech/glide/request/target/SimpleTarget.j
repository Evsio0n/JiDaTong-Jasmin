.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/request/target/SimpleTarget
.super com/bumptech/glide/request/target/BaseTarget
.signature "<Z:Ljava/lang/Object;>Lcom/bumptech/glide/request/target/BaseTarget<TZ;>;"

.field private final 'height' I

.field private final 'width' I

.method public <init>()V
aload 0
ldc_w -2147483648
ldc_w -2147483648
invokespecial com/bumptech/glide/request/target/SimpleTarget/<init>(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(II)V
aload 0
invokespecial com/bumptech/glide/request/target/BaseTarget/<init>()V
aload 0
iload 1
putfield com/bumptech/glide/request/target/SimpleTarget/width I
aload 0
iload 2
putfield com/bumptech/glide/request/target/SimpleTarget/height I
return
.limit locals 3
.limit stack 2
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/width I
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/height I
invokestatic com/bumptech/glide/util/Util/isValidDimensions(II)Z
ifne L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/width I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " and height: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/height I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", either provide dimensions in the constructor"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " or call override()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/width I
aload 0
getfield com/bumptech/glide/request/target/SimpleTarget/height I
invokeinterface com/bumptech/glide/request/target/SizeReadyCallback/onSizeReady(II)V 2
return
.limit locals 2
.limit stack 4
.end method
