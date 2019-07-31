.bytecode 50.0
.class public synchronized com/common/android/utils/task/genericTask/TaskParams
.super java/lang/Object

.field private 'params' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
aload 0
aload 1
aload 2
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
aload 0
getfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBoolean(Ljava/lang/String;)Z
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
astore 2
aload 2
getstatic java/lang/Boolean/FALSE Ljava/lang/Boolean;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
instanceof java/lang/String
ifeq L1
aload 2
checkcast java/lang/String
ldc "false"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
aload 2
getstatic java/lang/Boolean/TRUE Ljava/lang/Boolean;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L2
aload 2
instanceof java/lang/String
ifeq L3
aload 2
checkcast java/lang/String
ldc "true"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
L2:
iconst_1
ireturn
L3:
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not a Boolean."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public getDouble(Ljava/lang/String;)D
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
astore 4
L0:
aload 4
instanceof java/lang/Number
ifeq L1
aload 4
checkcast java/lang/Number
invokevirtual java/lang/Number/doubleValue()D
dreturn
L1:
aload 4
checkcast java/lang/String
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
L3:
dload 2
dreturn
L2:
astore 4
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not a number."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public getInt(Ljava/lang/String;)I
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
astore 3
L0:
aload 3
instanceof java/lang/Number
ifeq L1
aload 3
checkcast java/lang/Number
invokevirtual java/lang/Number/intValue()I
ireturn
L1:
aload 3
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L3:
iload 2
ireturn
L2:
astore 3
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not an int."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public getLong(Ljava/lang/String;)J
.throws java/lang/Exception
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
astore 4
L0:
aload 4
instanceof java/lang/Number
ifeq L1
aload 4
checkcast java/lang/Number
invokevirtual java/lang/Number/intValue()I
i2l
lreturn
L1:
aload 4
checkcast java/lang/String
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 2
L3:
lload 2
lreturn
L2:
astore 4
new java/lang/Exception
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not an int."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public has(Ljava/lang/String;)Z
aload 0
getfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public put(Ljava/lang/String;I)V
aload 0
getfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 3
.limit stack 3
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/common/android/utils/task/genericTask/TaskParams/params Ljava/util/HashMap;
aload 1
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 3
.limit stack 3
.end method
