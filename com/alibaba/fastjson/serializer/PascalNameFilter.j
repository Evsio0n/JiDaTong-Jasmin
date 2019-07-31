.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/PascalNameFilter
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/NameFilter

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
aload 2
ifnull L0
aload 2
invokevirtual java/lang/String/length()I
ifne L1
L0:
aload 2
areturn
L1:
aload 2
invokevirtual java/lang/String/toCharArray()[C
astore 1
aload 1
iconst_0
aload 1
iconst_0
caload
invokestatic java/lang/Character/toUpperCase(C)C
castore
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>([C)V
areturn
.limit locals 4
.limit stack 4
.end method
