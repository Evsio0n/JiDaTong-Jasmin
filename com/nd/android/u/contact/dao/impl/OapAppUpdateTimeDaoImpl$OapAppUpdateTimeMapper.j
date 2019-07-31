.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;>;"
.inner class private static final OapAppUpdateTimeMapper inner com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper outer com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;
new com/nd/android/u/contact/dataStructure/OapAppUpdateTime
dup
invokespecial com/nd/android/u/contact/dataStructure/OapAppUpdateTime/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setAppid(I)V
aload 3
aload 1
aload 1
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setCode(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/setUpdatetime(J)V
L0:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;
areturn
.limit locals 3
.limit stack 3
.end method
