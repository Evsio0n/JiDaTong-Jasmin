.bytecode 50.0
.class public final synchronized com/flurry/android/AdImage
.super com/flurry/android/ak

.field 'a' J

.field 'b' I

.field 'c' I

.field 'd' Ljava/lang/String;

.field 'e' [B

.method <init>()V
aload 0
invokespecial com/flurry/android/ak/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method <init>(Ljava/io/DataInput;)V
aload 0
invokespecial com/flurry/android/ak/<init>()V
aload 0
aload 1
invokevirtual com/flurry/android/AdImage/a(Ljava/io/DataInput;)V
return
.limit locals 2
.limit stack 2
.end method

.method final a(Ljava/io/DataInput;)V
aload 0
aload 1
invokeinterface java/io/DataInput/readLong()J 0
putfield com/flurry/android/AdImage/a J
aload 0
aload 1
invokeinterface java/io/DataInput/readInt()I 0
putfield com/flurry/android/AdImage/b I
aload 0
aload 1
invokeinterface java/io/DataInput/readInt()I 0
putfield com/flurry/android/AdImage/c I
aload 0
aload 1
invokeinterface java/io/DataInput/readUTF()Ljava/lang/String; 0
putfield com/flurry/android/AdImage/d Ljava/lang/String;
aload 0
aload 1
invokeinterface java/io/DataInput/readInt()I 0
newarray byte
putfield com/flurry/android/AdImage/e [B
aload 1
aload 0
getfield com/flurry/android/AdImage/e [B
invokeinterface java/io/DataInput/readFully([B)V 1
return
.limit locals 2
.limit stack 3
.end method

.method public final getHeight()I
aload 0
getfield com/flurry/android/AdImage/c I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getId()J
aload 0
getfield com/flurry/android/AdImage/a J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getImageData()[B
aload 0
getfield com/flurry/android/AdImage/e [B
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getMimeType()Ljava/lang/String;
aload 0
getfield com/flurry/android/AdImage/d Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getWidth()I
aload 0
getfield com/flurry/android/AdImage/b I
ireturn
.limit locals 1
.limit stack 1
.end method
