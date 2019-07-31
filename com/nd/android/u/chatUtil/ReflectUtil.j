.bytecode 50.0
.class public synchronized com/nd/android/u/chatUtil/ReflectUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static convertToContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L4 to L5 using L2
.catch java/lang/IllegalAccessException from L4 to L5 using L3
.catch java/lang/IllegalArgumentException from L6 to L7 using L2
.catch java/lang/IllegalAccessException from L6 to L7 using L3
.catch java/lang/IllegalArgumentException from L7 to L8 using L2
.catch java/lang/IllegalAccessException from L7 to L8 using L3
.catch java/lang/IllegalArgumentException from L9 to L10 using L2
.catch java/lang/IllegalAccessException from L9 to L10 using L3
.catch java/lang/IllegalArgumentException from L10 to L11 using L2
.catch java/lang/IllegalAccessException from L10 to L11 using L3
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 4
aload 4
ifnull L12
aload 4
arraylength
istore 2
iconst_0
istore 1
L13:
iload 1
iload 2
if_icmplt L14
L12:
aload 3
areturn
L14:
aload 4
iload 1
aaload
astore 5
L0:
aload 5
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 6
aload 6
aload 6
invokevirtual java/lang/String/toUpperCase()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
L1:
goto L11
L4:
aload 5
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
astore 7
aload 7
ldc java/lang/String
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L6
aload 3
aload 6
aload 5
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
L5:
goto L11
L2:
astore 5
aload 5
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L11
L6:
aload 7
ldc java/lang/Integer
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L7
aload 7
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "int"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
L7:
aload 3
aload 6
aload 5
aload 0
invokevirtual java/lang/reflect/Field/getInt(Ljava/lang/Object;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
L8:
goto L11
L3:
astore 5
aload 5
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
goto L11
L9:
aload 7
ldc java/lang/Long
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L10
aload 7
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "long"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
L10:
aload 3
aload 6
aload 5
aload 0
invokevirtual java/lang/reflect/Field/getLong(Ljava/lang/Object;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
L11:
iload 1
iconst_1
iadd
istore 1
goto L13
.limit locals 8
.limit stack 4
.end method

.method public static copy(Ljava/lang/Object;Ljava/lang/Object;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 4
aload 4
ifnull L4
aload 4
arraylength
istore 3
iconst_0
istore 2
L5:
iload 2
iload 3
if_icmplt L6
L4:
return
L6:
aload 4
iload 2
aaload
astore 5
L0:
aload 5
aload 1
aload 5
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L1:
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 5
aload 5
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L1
L3:
astore 5
aload 5
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public static getValuesFromClass(Ljava/lang/Class;)[I
.signature "(Ljava/lang/Class<*>;)[I"
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L4 to L5 using L2
.catch java/lang/IllegalAccessException from L4 to L5 using L3
.catch java/lang/IllegalArgumentException from L5 to L6 using L2
.catch java/lang/IllegalAccessException from L5 to L6 using L3
aload 0
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 6
aconst_null
astore 5
aload 6
ifnull L7
aload 6
arraylength
istore 4
iload 4
newarray int
astore 5
iconst_0
istore 2
iconst_0
istore 1
L8:
iload 1
iload 4
if_icmplt L9
L7:
aload 5
areturn
L9:
aload 6
iload 1
aaload
astore 7
L0:
aload 7
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
astore 8
aload 8
ldc java/lang/Integer
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L5
L1:
iload 2
istore 3
L4:
aload 8
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "int"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L10
L5:
aload 5
iload 2
aload 7
aload 0
invokevirtual java/lang/reflect/Field/getInt(Ljava/lang/Object;)I
iastore
L6:
iload 2
iconst_1
iadd
istore 3
L10:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L8
L2:
astore 7
aload 7
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
iload 2
istore 3
goto L10
L3:
astore 7
aload 7
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
iload 2
istore 3
goto L10
.limit locals 9
.limit stack 4
.end method

.method public static parseFromCursor(Ljava/lang/Object;Landroid/database/Cursor;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalArgumentException from L4 to L5 using L2
.catch java/lang/IllegalAccessException from L4 to L5 using L3
.catch java/lang/IllegalArgumentException from L6 to L7 using L2
.catch java/lang/IllegalAccessException from L6 to L7 using L3
.catch java/lang/IllegalArgumentException from L7 to L8 using L2
.catch java/lang/IllegalAccessException from L7 to L8 using L3
.catch java/lang/IllegalArgumentException from L9 to L10 using L2
.catch java/lang/IllegalAccessException from L9 to L10 using L3
.catch java/lang/IllegalArgumentException from L10 to L11 using L2
.catch java/lang/IllegalAccessException from L10 to L11 using L3
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 4
aload 4
ifnull L12
aload 4
arraylength
istore 3
iconst_0
istore 2
L13:
iload 2
iload 3
if_icmplt L14
L12:
return
L14:
aload 4
iload 2
aaload
astore 5
L0:
aload 5
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
astore 6
aload 5
invokevirtual java/lang/reflect/Field/getType()Ljava/lang/Class;
astore 7
aload 1
aload 6
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
ifge L4
L1:
goto L11
L4:
aload 7
ldc java/lang/String
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L6
aload 5
aload 0
aload 1
aload 1
aload 6
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L5:
goto L11
L2:
astore 5
aload 5
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
goto L11
L6:
aload 7
ldc java/lang/Integer
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L7
aload 7
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "int"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
L7:
aload 5
aload 0
aload 1
aload 1
aload 6
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L8:
goto L11
L3:
astore 5
aload 5
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
goto L11
L9:
aload 7
ldc java/lang/Long
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L10
aload 7
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "long"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
L10:
aload 5
aload 0
aload 1
aload 1
aload 6
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L11:
iload 2
iconst_1
iadd
istore 2
goto L13
.limit locals 8
.limit stack 5
.end method
