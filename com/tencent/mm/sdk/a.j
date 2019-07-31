.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/a
.super java/lang/Object
.implements android/content/SharedPreferences
.inner class private static final a inner com/tencent/mm/sdk/a$a outer com/tencent/mm/sdk/a

.field private final 'a' Landroid/content/ContentResolver;

.field private final 'b' [Ljava/lang/String;

.field private final 'c' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"

.field private 'd' Lcom/tencent/mm/sdk/a$a;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "key"
aastore
dup
iconst_2
ldc "type"
aastore
dup
iconst_3
ldc "value"
aastore
putfield com/tencent/mm/sdk/a/b [Ljava/lang/String;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/tencent/mm/sdk/a/c Ljava/util/HashMap;
aload 0
aconst_null
putfield com/tencent/mm/sdk/a/d Lcom/tencent/mm/sdk/a$a;
aload 0
aload 1
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
putfield com/tencent/mm/sdk/a/a Landroid/content/ContentResolver;
return
.limit locals 2
.limit stack 5
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
aload 0
getfield com/tencent/mm/sdk/a/a Landroid/content/ContentResolver;
getstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
aload 0
getfield com/tencent/mm/sdk/a/b [Ljava/lang/String;
ldc "key = ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
L1:
aload 4
ifnonnull L3
aconst_null
areturn
L3:
aload 4
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
aload 4
ldc "value"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 3
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L6
aload 4
iload 2
invokeinterface android/database/Cursor/getInt(I)I 1
aload 4
iload 3
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/tencent/mm/sdk/c/a$a/a(ILjava/lang/String;)Ljava/lang/Object;
astore 1
L4:
aload 4
invokeinterface android/database/Cursor/close()V 0
L5:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
L6:
aconst_null
astore 1
goto L4
.limit locals 5
.limit stack 8
.end method

.method public final contains(Ljava/lang/String;)Z
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/tencent/mm/sdk/a/d Lcom/tencent/mm/sdk/a$a;
ifnonnull L0
aload 0
new com/tencent/mm/sdk/a$a
dup
aload 0
getfield com/tencent/mm/sdk/a/a Landroid/content/ContentResolver;
invokespecial com/tencent/mm/sdk/a$a/<init>(Landroid/content/ContentResolver;)V
putfield com/tencent/mm/sdk/a/d Lcom/tencent/mm/sdk/a$a;
L0:
aload 0
getfield com/tencent/mm/sdk/a/d Lcom/tencent/mm/sdk/a$a;
areturn
.limit locals 1
.limit stack 4
.end method

.method public final getAll()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;*>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
L0:
aload 0
getfield com/tencent/mm/sdk/a/a Landroid/content/ContentResolver;
getstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
aload 0
getfield com/tencent/mm/sdk/a/b [Ljava/lang/String;
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
L1:
aload 4
ifnonnull L3
aconst_null
areturn
L3:
aload 4
ldc "key"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 1
aload 4
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
aload 4
ldc "value"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 3
L4:
aload 4
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L6
aload 4
iload 2
invokeinterface android/database/Cursor/getInt(I)I 1
aload 4
iload 3
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokestatic com/tencent/mm/sdk/c/a$a/a(ILjava/lang/String;)Ljava/lang/Object;
astore 5
aload 0
getfield com/tencent/mm/sdk/a/c Ljava/util/HashMap;
aload 4
iload 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aload 5
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L5:
goto L4
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
getfield com/tencent/mm/sdk/a/c Ljava/util/HashMap;
areturn
L6:
aload 4
invokeinterface android/database/Cursor/close()V 0
aload 0
getfield com/tencent/mm/sdk/a/c Ljava/util/HashMap;
astore 4
L7:
aload 4
areturn
.limit locals 6
.limit stack 6
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
astore 1
iload 2
istore 3
aload 1
ifnull L0
iload 2
istore 3
aload 1
instanceof java/lang/Boolean
ifeq L0
aload 1
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
istore 3
L0:
iload 3
ireturn
.limit locals 4
.limit stack 2
.end method

.method public final getFloat(Ljava/lang/String;F)F
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
astore 1
fload 2
fstore 3
aload 1
ifnull L0
fload 2
fstore 3
aload 1
instanceof java/lang/Float
ifeq L0
aload 1
checkcast java/lang/Float
invokevirtual java/lang/Float/floatValue()F
fstore 3
L0:
fload 3
freturn
.limit locals 4
.limit stack 2
.end method

.method public final getInt(Ljava/lang/String;I)I
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
astore 1
iload 2
istore 3
aload 1
ifnull L0
iload 2
istore 3
aload 1
instanceof java/lang/Integer
ifeq L0
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 3
L0:
iload 3
ireturn
.limit locals 4
.limit stack 2
.end method

.method public final getLong(Ljava/lang/String;J)J
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
astore 1
lload 2
lstore 4
aload 1
ifnull L0
lload 2
lstore 4
aload 1
instanceof java/lang/Long
ifeq L0
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
L0:
lload 4
lreturn
.limit locals 6
.limit stack 2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/tencent/mm/sdk/a/getValue(Ljava/lang/String;)Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof java/lang/String
ifeq L0
aload 1
checkcast java/lang/String
areturn
L0:
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
.signature "(Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;)Ljava/util/Set<Ljava/lang/String;>;"
aconst_null
areturn
.limit locals 3
.limit stack 1
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
return
.limit locals 2
.limit stack 0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
return
.limit locals 2
.limit stack 0
.end method
