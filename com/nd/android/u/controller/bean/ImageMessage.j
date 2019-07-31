.bytecode 50.0
.class public synchronized com/nd/android/u/controller/bean/ImageMessage
.super java/lang/Object
.implements java/io/Serializable

.field public static final 'CUSTOM_TYPE' I = 256


.field public static final 'DEFAULT_SMILY_TYPE' I = 258


.field public static final 'IMAGE_TYPE' I = 259


.field public static final 'SMILY_TYPE' I = 257


.field private static final 'serialVersionUID' J = -9142112780539208796L


.field private 'length' J

.field private 'mExtraflag' I

.field private 'mImgurl' Ljava/lang/String;

.field private 'mPosition' I

.field private 'mProgress' Ljava/lang/String;

.field private 'mType' I

.field private 'mbIsClickToReceive' Z

.field public 'text' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/ImageMessage/mbIsClickToReceive Z
aload 0
ldc ""
putfield com/nd/android/u/controller/bean/ImageMessage/mProgress Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getExtraflag()I
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mExtraflag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getImgurl()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mImgurl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLength()J
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/length J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLengthStr()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/length J
lconst_0
lcmp
ifne L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/length J
l2d
iconst_2
invokestatic com/nd/android/u/allCommonUtils/FormatUtils/formatNumber(DI)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getPosition()I
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getProgress()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mProgress Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isClickToReceive()Z
aload 0
getfield com/nd/android/u/controller/bean/ImageMessage/mbIsClickToReceive Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClickToReceive(Z)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/ImageMessage/mbIsClickToReceive Z
return
.limit locals 2
.limit stack 2
.end method

.method public setImgurl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/ImageMessage/mImgurl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setLength(J)V
aload 0
lload 1
putfield com/nd/android/u/controller/bean/ImageMessage/length J
return
.limit locals 3
.limit stack 3
.end method

.method public setPosition(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/ImageMessage/mPosition I
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/ImageMessage/mType I
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
ldc "*"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
aload 0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
new java/lang/StringBuilder
dup
aload 0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getPosition()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
