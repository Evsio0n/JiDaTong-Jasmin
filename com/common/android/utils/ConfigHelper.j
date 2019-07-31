.bytecode 50.0
.class public synchronized com/common/android/utils/ConfigHelper
.super java/lang/Object

.field public static final 'GuideBefore' Ljava/lang/String; = "guidebefore"

.field public static final 'ReadTestDetail' Ljava/lang/String; = "ReadTestDetail"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getGroupSetType(Ljava/lang/String;I)I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
iload 1
invokestatic com/common/android/utils/ConfigHelper/loadIntKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
aload 2
iconst_0
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static loadIntKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
aload 2
iload 3
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static loadKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
aload 2
ldc ""
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public static loadLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
aload 2
lload 3
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 5
.limit stack 4
.end method

.method public static removeGroupSetKey(Ljava/lang/String;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
aload 1
aload 0
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static removeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
aload 2
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 3
.end method

.method public static saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
aload 2
iload 3
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 3
.end method

.method public static saveGroupSetType(Ljava/lang/String;I)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
iload 1
invokestatic com/common/android/utils/ConfigHelper/saveIntKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 4
.end method

.method public static saveIntKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
aload 2
iload 3
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 3
.end method

.method public static saveKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
aload 2
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 3
.end method

.method public static saveLongKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
aload 2
lload 3
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 5
.limit stack 4
.end method
