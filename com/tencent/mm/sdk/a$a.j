.bytecode 50.0
.class final synchronized com/tencent/mm/sdk/a$a
.super java/lang/Object
.implements android/content/SharedPreferences$Editor
.inner class private static final a inner com/tencent/mm/sdk/a$a outer com/tencent/mm/sdk/a

.field private 'a' Landroid/content/ContentResolver;

.field private 'e' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"

.field private 'f' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.field private 'g' Z

.method public <init>(Landroid/content/ContentResolver;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 0
iconst_0
putfield com/tencent/mm/sdk/a$a/g Z
aload 0
aload 1
putfield com/tencent/mm/sdk/a$a/a Landroid/content/ContentResolver;
return
.limit locals 2
.limit stack 3
.end method

.method public final apply()V
return
.limit locals 1
.limit stack 0
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
aload 0
iconst_1
putfield com/tencent/mm/sdk/a$a/g Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public final commit()Z
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 0
getfield com/tencent/mm/sdk/a$a/g Z
ifeq L0
aload 0
getfield com/tencent/mm/sdk/a$a/a Landroid/content/ContentResolver;
getstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
pop
aload 0
iconst_0
putfield com/tencent/mm/sdk/a$a/g Z
L0:
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 0
getfield com/tencent/mm/sdk/a$a/a Landroid/content/ContentResolver;
getstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
ldc "key = ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 4
aastore
invokevirtual android/content/ContentResolver/delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
pop
goto L1
L2:
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 5
aload 5
ifnonnull L5
ldc "MicroMsg.SDK.PluginProvider.Resolver"
ldc "unresolve failed, null value"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
istore 1
L6:
iload 1
ifne L7
iconst_0
istore 1
L8:
iload 1
ifeq L3
aload 0
getfield com/tencent/mm/sdk/a$a/a Landroid/content/ContentResolver;
getstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
aload 2
ldc "key = ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aastore
invokevirtual android/content/ContentResolver/update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
goto L3
L5:
aload 5
instanceof java/lang/Integer
ifeq L9
iconst_1
istore 1
goto L6
L9:
aload 5
instanceof java/lang/Long
ifeq L10
iconst_2
istore 1
goto L6
L10:
aload 5
instanceof java/lang/String
ifeq L11
iconst_3
istore 1
goto L6
L11:
aload 5
instanceof java/lang/Boolean
ifeq L12
iconst_4
istore 1
goto L6
L12:
aload 5
instanceof java/lang/Float
ifeq L13
iconst_5
istore 1
goto L6
L13:
aload 5
instanceof java/lang/Double
ifeq L14
bipush 6
istore 1
goto L6
L14:
ldc "MicroMsg.SDK.PluginProvider.Resolver"
new java/lang/StringBuilder
dup
ldc "unresolve failed, unknown type="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 5
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
istore 1
goto L6
L7:
aload 2
ldc "type"
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "value"
aload 5
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
iconst_1
istore 1
goto L8
L4:
iconst_1
ireturn
.limit locals 6
.limit stack 8
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 1
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 1
fload 2
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 1
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 4
.limit stack 4
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/e Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
.signature "(Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;)Landroid/content/SharedPreferences$Editor;"
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a$a/f Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
