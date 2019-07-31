.bytecode 50.0
.class public final synchronized com/alipay/a/a/g
.super java/lang/Object
.implements com/alipay/a/a/i
.implements com/alipay/a/a/j

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
astore 8
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 7
aload 7
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 6
L0:
aload 7
ldc java/lang/Object
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 6
ifnull L2
aload 6
arraylength
ifle L2
aload 6
arraylength
istore 3
iconst_0
istore 2
L3:
iload 2
iload 3
if_icmpge L2
aload 6
iload 2
aaload
astore 9
aload 9
ifnull L4
aload 1
ifnonnull L5
L4:
aconst_null
astore 5
L6:
aload 5
ifnull L7
aload 8
aload 9
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
aload 5
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L7:
iload 2
iconst_1
iadd
istore 2
goto L3
L5:
ldc "this$0"
aload 9
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
aconst_null
astore 5
goto L6
L8:
aload 9
invokevirtual java/lang/reflect/Field/isAccessible()Z
istore 4
aload 9
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 9
aload 1
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 5
aload 5
ifnonnull L9
aconst_null
astore 5
goto L6
L9:
aload 9
iload 4
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 5
invokestatic com/alipay/a/a/f/b(Ljava/lang/Object;)Ljava/lang/Object;
astore 5
goto L6
L2:
aload 7
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 7
aload 7
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 6
goto L0
L1:
aload 8
areturn
.limit locals 10
.limit stack 3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc org/json/alipay/c
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 1
checkcast org/json/alipay/c
astore 6
aload 2
checkcast java/lang/Class
astore 1
aload 1
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 5
L2:
aload 5
astore 2
aload 1
ldc java/lang/Object
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
aload 1
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 2
aload 2
ifnull L3
aload 2
arraylength
ifle L3
aload 2
arraylength
istore 4
iconst_0
istore 3
L4:
iload 3
iload 4
if_icmpge L3
aload 2
iload 3
aaload
astore 7
aload 7
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 8
aload 7
invokevirtual java/lang/reflect/Field/getGenericType()Ljava/lang/reflect/Type;
astore 9
aload 6
aload 8
invokevirtual org/json/alipay/c/b(Ljava/lang/String;)Z
ifeq L5
aload 7
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 7
aload 5
aload 6
aload 8
invokevirtual org/json/alipay/c/a(Ljava/lang/String;)Ljava/lang/Object;
aload 9
invokestatic com/alipay/a/a/e/a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L5:
iload 3
iconst_1
iadd
istore 3
goto L4
L3:
aload 1
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 1
goto L2
.limit locals 10
.limit stack 4
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
