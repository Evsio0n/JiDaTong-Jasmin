.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/OapClassRelation;>;"
.inner class private static final ClassRelationMapper inner com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper outer com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapClassRelation;
aload 1
invokestatic com/nd/android/u/contact/db/table/OapClassRelationTable/parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapClassRelation;
areturn
.limit locals 3
.limit stack 1
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapClassRelationDaoImpl$ClassRelationMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapClassRelation;
areturn
.limit locals 3
.limit stack 3
.end method
