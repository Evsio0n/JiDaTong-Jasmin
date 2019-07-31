.bytecode 50.0
.class public final synchronized com/nd/android/u/controller/bean/FontFormat
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'crTextColor' I

.field private 'dwEffects' Ljava/lang/String;

.field private 'dwMask' Ljava/lang/String;

.field private 'dwPointSize' I

.field private final 'end' Ljava/lang/String;

.field private final 'start' Ljava/lang/String;

.field private 'szFaceName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "&<fmt>"
putfield com/nd/android/u/controller/bean/FontFormat/start Ljava/lang/String;
aload 0
ldc "<fmt>&"
putfield com/nd/android/u/controller/bean/FontFormat/end Ljava/lang/String;
aload 0
ldc "4026531840"
putfield com/nd/android/u/controller/bean/FontFormat/dwMask Ljava/lang/String;
aload 0
ldc "67108864"
putfield com/nd/android/u/controller/bean/FontFormat/dwEffects Ljava/lang/String;
aload 0
bipush 14
putfield com/nd/android/u/controller/bean/FontFormat/dwPointSize I
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/FontFormat/crTextColor I
aload 0
ldc "Tahoma"
putfield com/nd/android/u/controller/bean/FontFormat/szFaceName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static getString()Ljava/lang/String;
ldc "&<fmt>4278190079:67108864:9:0:Tahoma<fmt>&"
areturn
.limit locals 0
.limit stack 1
.end method

.method public getCrTextColor()I
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/crTextColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDwEffects()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwEffects Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDwMask()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwMask Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDwPointSize()I
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwPointSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSzFaceName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/szFaceName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCrTextColor(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/FontFormat/crTextColor I
return
.limit locals 2
.limit stack 2
.end method

.method public setDwEffects(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/FontFormat/dwEffects Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDwMask(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/FontFormat/dwMask Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDwPointSize(I)V
aload 0
iload 1
putfield com/nd/android/u/controller/bean/FontFormat/dwPointSize I
return
.limit locals 2
.limit stack 2
.end method

.method public setSzFaceName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/controller/bean/FontFormat/szFaceName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "&<fmt>"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwMask Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwEffects Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/dwPointSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/crTextColor I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/FontFormat/szFaceName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<fmt>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
