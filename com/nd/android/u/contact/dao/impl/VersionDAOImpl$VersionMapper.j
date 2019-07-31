.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/VersionInfo;>;"
.inner class private static final VersionMapper inner com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper outer com/nd/android/u/contact/dao/impl/VersionDAOImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/VersionDAOImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
new com/nd/android/u/contact/dataStructure/VersionInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/VersionInfo/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "orgver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setOrgver(I)V
aload 3
aload 1
aload 1
ldc "classver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setClassver(I)V
aload 3
aload 1
aload 1
ldc "userver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setUserver(I)V
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
invokevirtual com/nd/android/u/contact/dao/impl/VersionDAOImpl$VersionMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
areturn
.limit locals 3
.limit stack 3
.end method
