.bytecode 50.0
.class public synchronized com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl
.super java/lang/Object
.implements com/nd/schoollife/business/db/dao/SquareBannerDao

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private bean2ContentValue(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
ldc "insert_time"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "avatar"
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getAvatar()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "type"
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "scope_id"
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "name"
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private cursor2Bean(Landroid/database/Cursor;)Ljava/util/List;
.signature "(Landroid/database/Cursor;)Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
ifnonnull L0
L1:
aload 3
areturn
L0:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
iconst_0
istore 2
L2:
iload 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
if_icmpge L1
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 4
aload 4
aload 1
aload 1
ldc "avatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setAvatar(Ljava/lang/String;)V
aload 4
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
aload 4
aload 1
aload 1
ldc "scope_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setScope_id(J)V
aload 4
aload 1
aload 1
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 5
.limit stack 4
.end method

.method public cleanSquareBanner(I)Z
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
iload 1
iconst_1
if_icmpge L0
aload 2
ldc "DELETE FROM sl_square_banner"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
iconst_1
ireturn
L0:
aload 2
ldc "sl_square_banner"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "avatar NOT IN (SELECT avatar FROM sl_square_banner ORDER BY insert_time DESC LIMIT "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
anewarray java/lang/String
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public deleteSquareByType(Ljava/lang/String;)Z
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "sl_square_banner"
ldc "type =?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
iconst_1
ireturn
.limit locals 2
.limit stack 7
.end method

.method public getDataCount()J
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "SELECT count(*) FROM sl_square_banner"
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 1
iconst_0
invokeinterface android/database/Cursor/getLong(I)J 1
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 3
.end method

.method public getSquareBanner(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"
iload 1
iconst_1
if_icmpge L0
aconst_null
areturn
L0:
aload 0
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
ldc "sl_square_banner"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "insert_time DESC"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
invokespecial com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl/cursor2Bean(Landroid/database/Cursor;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 11
.end method

.method public insertSquareBanner(Ljava/util/List;)J
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;)J"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpge L1
L0:
lconst_0
lreturn
L1:
iconst_0
istore 3
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 2
L2:
iload 2
iflt L3
iload 3
istore 4
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl/insertSquareBannerSingle(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)J
lconst_0
lcmp
ifle L4
iload 3
iconst_1
iadd
istore 4
L4:
iload 2
iconst_1
isub
istore 2
iload 4
istore 3
goto L2
L3:
iload 3
i2l
lreturn
.limit locals 5
.limit stack 4
.end method

.method public insertSquareBannerSingle(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)J
aload 1
ifnonnull L0
ldc2_w -1L
lreturn
L0:
invokestatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getDB()Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
astore 3
aload 2
ldc "sl_square_banner"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "avatar"
aastore
ldc "type=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 3
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 2
ldc "sl_square_banner"
aload 0
aload 1
invokespecial com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl/bean2ContentValue(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)Landroid/content/ContentValues;
ldc "type=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
i2l
lreturn
L1:
aload 2
ldc "sl_square_banner"
aconst_null
aload 0
aload 1
invokespecial com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl/bean2ContentValue(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 4
.limit stack 8
.end method
