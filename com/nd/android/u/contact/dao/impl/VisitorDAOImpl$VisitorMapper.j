.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/VisitorInfo;>;"
.inner class private static final VisitorMapper inner com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper outer com/nd/android/u/contact/dao/impl/VisitorDAOImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/VisitorDAOImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/VisitorInfo;
new com/nd/android/u/contact/dataStructure/VisitorInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/VisitorInfo/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "fuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setFid(J)V
aload 3
aload 1
aload 1
ldc "tuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setTuid(J)V
aload 3
aload 1
aload 1
ldc "dateline"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setDateline(J)V
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
invokevirtual com/nd/android/u/contact/dao/impl/VisitorDAOImpl$VisitorMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/VisitorInfo;
areturn
.limit locals 3
.limit stack 3
.end method
