.bytecode 50.0
.class public final synchronized com/flurry/android/Offer
.super java/lang/Object

.field private 'a' J

.field private 'b' Ljava/lang/String;

.field private 'c' Ljava/lang/String;

.field private 'd' I

.field private 'e' Lcom/flurry/android/AdImage;

.method <init>(JLcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/flurry/android/Offer/a J
aload 0
aload 4
putfield com/flurry/android/Offer/b Ljava/lang/String;
aload 0
aload 3
putfield com/flurry/android/Offer/e Lcom/flurry/android/AdImage;
aload 0
aload 5
putfield com/flurry/android/Offer/c Ljava/lang/String;
aload 0
iload 6
putfield com/flurry/android/Offer/d I
return
.limit locals 7
.limit stack 3
.end method

.method public final getDescription()Ljava/lang/String;
aload 0
getfield com/flurry/android/Offer/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getId()J
aload 0
getfield com/flurry/android/Offer/a J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getImage()Lcom/flurry/android/AdImage;
aload 0
getfield com/flurry/android/Offer/e Lcom/flurry/android/AdImage;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getName()Ljava/lang/String;
aload 0
getfield com/flurry/android/Offer/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getPrice()I
aload 0
getfield com/flurry/android/Offer/d I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUrl()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "[id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/Offer/a J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",name="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/Offer/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",price="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/Offer/d I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", image size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/Offer/e Lcom/flurry/android/AdImage;
getfield com/flurry/android/AdImage/e [B
arraylength
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
