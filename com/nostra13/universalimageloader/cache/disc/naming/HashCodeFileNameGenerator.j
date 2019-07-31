.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public generate(Ljava/lang/String;)Ljava/lang/String;
aload 1
invokevirtual java/lang/String/hashCode()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method
