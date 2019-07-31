.bytecode 50.0
.class public synchronized com/nd/android/u/contact/menu/MenuItem
.super java/lang/Object

.field private 'bg' Ljava/lang/String;

.field private 'id' I

.field private 'rId' I

.field private 'title' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(ILjava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/contact/menu/MenuItem/id I
aload 0
aload 2
putfield com/nd/android/u/contact/menu/MenuItem/title Ljava/lang/String;
aload 0
aload 3
putfield com/nd/android/u/contact/menu/MenuItem/bg Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method public getBg()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/bg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/title Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getrId()I
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/rId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setBg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/menu/MenuItem/bg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/menu/MenuItem/id I
return
.limit locals 2
.limit stack 2
.end method

.method public setRId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/menu/MenuItem/rId I
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/menu/MenuItem/title Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "[menuitem]:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/title Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/menu/MenuItem/bg Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
