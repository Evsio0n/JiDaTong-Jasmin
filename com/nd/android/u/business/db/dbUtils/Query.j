.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dbUtils/Query
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "Query-Builder"

.field private 'DEBUG' Z

.field private 'binds' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mColumns' [Ljava/lang/String;

.field private 'mDb' Landroid/database/sqlite/SQLiteDatabase;

.field private 'mGroupBy' Ljava/lang/String;

.field private 'mHaving' Ljava/lang/String;

.field private 'mLimit' Ljava/lang/String;

.field private 'mOrderBy' Ljava/lang/String;

.field private 'mSelection' Ljava/lang/String;

.field private 'mSelectionArgs' [Ljava/lang/String;

.field private 'mTable' Ljava/lang/String;

.field private 'mValues' Landroid/content/ContentValues;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mGroupBy Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mHaving Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mLimit Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
aload 0
iconst_0
putfield com/nd/android/u/business/db/dbUtils/Query/DEBUG Z
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mGroupBy Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mHaving Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mLimit Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
aload 0
iconst_0
putfield com/nd/android/u/business/db/dbUtils/Query/DEBUG Z
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setDb(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 3
.end method

.method private addSelection(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
ifnonnull L0
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
return
L0:
aload 0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " AND "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
return
.limit locals 2
.limit stack 4
.end method

.method private buildQuery()V
aload 0
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
anewarray java/lang/String
putfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/DEBUG Z
ifeq L0
ldc "Query-Builder"
aload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/v(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private preCheck()Z
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private preCheckBymDb()Z
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public delete()I
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/preCheck()Z
ifeq L0
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/buildQuery()V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
ireturn
L0:
ldc "Query-Builder"
new java/lang/StringBuilder
dup
ldc "Cann't build the query "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_m1
ireturn
.limit locals 1
.limit stack 4
.end method

.method public from(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
aconst_null
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
areturn
.limit locals 2
.limit stack 3
.end method

.method public from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/business/db/dbUtils/Query/mColumns [Ljava/lang/String;
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public getContentValues()Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
areturn
.limit locals 1
.limit stack 1
.end method

.method public groupBy(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mGroupBy Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public having(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mHaving Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public insert()J
.throws android/database/SQLException
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aconst_null
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public into(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setTable(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
areturn
.limit locals 2
.limit stack 2
.end method

.method public limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
new java/lang/StringBuilder
dup
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
areturn
.limit locals 2
.limit stack 4
.end method

.method public limit(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mLimit Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public orderBy(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public orderByDesc(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " DESC"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 1
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 2
.limit stack 3
.end method

.method public select()Landroid/database/Cursor;
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/preCheck()Z
ifeq L0
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/buildQuery()V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mColumns [Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mGroupBy Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mHaving Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mLimit Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
L0:
ldc "Query-Builder"
new java/lang/StringBuilder
dup
ldc "Cann't build the query "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
.limit locals 1
.limit stack 9
.end method

.method public select(Ljava/lang/String;)Landroid/database/Cursor;
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/preCheckBymDb()Z
ifeq L0
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 1
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
areturn
L0:
ldc "Query-Builder"
new java/lang/StringBuilder
dup
ldc "Cann't build the query "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public setDb(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L0
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTable(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "Query [table="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", columns="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mColumns [Ljava/lang/String;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", selection="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", selectionArgs="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", groupBy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mGroupBy Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", having="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mHaving Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", orderBy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mOrderBy Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", mLimit="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mLimit Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public update()I
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/preCheck()Z
ifeq L0
aload 0
invokespecial com/nd/android/u/business/db/dbUtils/Query/buildQuery()V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mDb Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mTable Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelection Ljava/lang/String;
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/mSelectionArgs [Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
ireturn
L0:
ldc "Query-Builder"
new java/lang/StringBuilder
dup
ldc "Cann't build the query "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/business/db/dbUtils/Query/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_m1
ireturn
.limit locals 1
.limit stack 5
.end method

.method public values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
putfield com/nd/android/u/business/db/dbUtils/Query/mValues Landroid/content/ContentValues;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public where(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dbUtils/Query/addSelection(Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public where(Ljava/lang/String;I)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dbUtils/Query/addSelection(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
new java/lang/StringBuilder
dup
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public where(Ljava/lang/String;J)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dbUtils/Query/addSelection(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
new java/lang/StringBuilder
dup
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 4
.limit stack 5
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dbUtils/Query/addSelection(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public where(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dbUtils/Query/addSelection(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/business/db/dbUtils/Query/binds Ljava/util/ArrayList;
aload 2
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
areturn
.limit locals 3
.limit stack 2
.end method
