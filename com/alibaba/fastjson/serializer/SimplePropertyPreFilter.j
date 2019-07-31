.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/SimplePropertyPreFilter
.super java/lang/Object
.implements com/alibaba/fastjson/serializer/PropertyPreFilter

.field private final 'clazz' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'excludes' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.field private final 'includes' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.method public transient <init>(Ljava/lang/Class;[Ljava/lang/String;)V
.signature "(Ljava/lang/Class<*>;[Ljava/lang/String;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/includes Ljava/util/Set;
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/excludes Ljava/util/Set;
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/clazz Ljava/lang/Class;
aload 2
arraylength
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 2
iload 3
aaload
astore 1
aload 1
ifnull L2
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/includes Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
return
.limit locals 5
.limit stack 3
.end method

.method public transient <init>([Ljava/lang/String;)V
aload 0
aconst_null
aload 1
invokespecial com/alibaba/fastjson/serializer/SimplePropertyPreFilter/<init>(Ljava/lang/Class;[Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
aload 2
ifnonnull L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/clazz Ljava/lang/Class;
ifnull L2
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/clazz Ljava/lang/Class;
aload 2
invokevirtual java/lang/Class/isInstance(Ljava/lang/Object;)Z
ifeq L1
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/excludes Ljava/util/Set;
aload 3
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L3
iconst_0
ireturn
L3:
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/includes Ljava/util/Set;
invokeinterface java/util/Set/size()I 0
ifeq L1
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/includes Ljava/util/Set;
aload 3
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifne L1
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getClazz()Ljava/lang/Class;
.signature "()Ljava/lang/Class<*>;"
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/clazz Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExcludes()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/lang/String;>;"
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/excludes Ljava/util/Set;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIncludes()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/lang/String;>;"
aload 0
getfield com/alibaba/fastjson/serializer/SimplePropertyPreFilter/includes Ljava/util/Set;
areturn
.limit locals 1
.limit stack 1
.end method
