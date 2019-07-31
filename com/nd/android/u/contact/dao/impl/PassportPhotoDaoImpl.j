.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/PassportPhotoDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$1
.inner class private static final PassportPhotoMapper inner com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper outer com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private photoToValues(Lcom/nd/android/u/contact/dataStructure/PassportPhoto;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "url"
aload 1
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/url Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
getfield com/nd/android/u/contact/dataStructure/PassportPhoto/updateTime J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public findPassportPhoto(J)Lcom/nd/android/u/contact/dataStructure/PassportPhoto;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_passportphoto"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$PassportPhotoMapper/<init>(Lcom/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/PassportPhoto
areturn
.limit locals 4
.limit stack 5
.end method

.method public insertPassportPhoto(Lcom/nd/android/u/contact/dataStructure/PassportPhoto;)J
aload 1
ifnonnull L0
ldc2_w -1L
lreturn
L0:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_passportphoto"
aconst_null
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/PassportPhotoDaoImpl/photoToValues(Lcom/nd/android/u/contact/dataStructure/PassportPhoto;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 2
.limit stack 5
.end method
