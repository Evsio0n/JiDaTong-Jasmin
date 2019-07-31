.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/structure/TagPosition
.super java/lang/Object
.implements java/lang/Comparable
.signature "Ljava/lang/Object;Ljava/lang/Comparable<Lcom/nd/schoollife/common/bean/structure/TagPosition;>;"
.inner class public static final enum TAG_TYPE inner com/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE outer com/nd/schoollife/common/bean/structure/TagPosition

.field private 'atContent' Ljava/lang/String;

.field private 'end' I

.field private 'start' Ljava/lang/Integer;

.field private 'type' Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compareTo(Lcom/nd/schoollife/common/bean/structure/TagPosition;)I
aload 0
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getStart()Ljava/lang/Integer;
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/getStart()Ljava/lang/Integer;
invokevirtual java/lang/Integer/compareTo(Ljava/lang/Integer;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic compareTo(Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/schoollife/common/bean/structure/TagPosition
invokevirtual com/nd/schoollife/common/bean/structure/TagPosition/compareTo(Lcom/nd/schoollife/common/bean/structure/TagPosition;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getAtContent()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/TagPosition/atContent Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEnd()I
aload 0
getfield com/nd/schoollife/common/bean/structure/TagPosition/end I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStart()Ljava/lang/Integer;
aload 0
getfield com/nd/schoollife/common/bean/structure/TagPosition/start Ljava/lang/Integer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
aload 0
getfield com/nd/schoollife/common/bean/structure/TagPosition/type Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAtContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/TagPosition/atContent Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setEnd(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/structure/TagPosition/end I
return
.limit locals 2
.limit stack 2
.end method

.method public setStart(I)V
aload 0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/nd/schoollife/common/bean/structure/TagPosition/start Ljava/lang/Integer;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/TagPosition/type Lcom/nd/schoollife/common/bean/structure/TagPosition$TAG_TYPE;
return
.limit locals 2
.limit stack 2
.end method
