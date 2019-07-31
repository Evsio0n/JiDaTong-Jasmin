.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/PassportPhoto;>;"
.inner class private static final PassportPhotoMapper inner com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper outer com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/PassportPhoto;
new com/nd/android/u/contact/dataStructure/PassportPhoto
dup
invokespecial com/nd/android/u/contact/dataStructure/PassportPhoto/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/uid J
aload 3
aload 1
aload 1
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/url Ljava/lang/String;
aload 3
aload 1
aload 1
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/updateTime J
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
invokevirtual com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/PassportPhoto;
areturn
.limit locals 3
.limit stack 3
.end method
