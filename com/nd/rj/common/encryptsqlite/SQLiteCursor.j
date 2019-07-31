.bytecode 50.0
.class public synchronized com/nd/rj/common/encryptsqlite/SQLiteCursor
.super java/lang/Object
.implements android/database/Cursor

.field private 'CPPSQLITE_ERRPR' I

.field private 'mColCount' I

.field private 'mColumns' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mIsAfterLast' Z

.field private 'mQryData' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"

.field private 'mRowCount' I

.field private 'mRowIndex' I

.method public <init>(Lcom/nd/rj/common/encryptsqlite/SQLiteDatabase;I)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/CPPSQLITE_ERRPR I
aload 0
iconst_m1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
L0:
aload 0
aload 1
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/numFields(I)I
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
L1:
iconst_0
istore 3
L3:
iload 3
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
if_icmplt L6
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mQryData Ljava/util/ArrayList;
L4:
aload 1
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/more(I)Z
istore 4
L5:
iload 4
ifne L8
aload 1
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/clearResult(I)V
return
L6:
aload 1
iload 3
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/getFieldName(II)Ljava/lang/String;
astore 5
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L7:
iload 3
iconst_1
iadd
istore 3
goto L3
L8:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L9:
iconst_0
istore 3
L10:
iload 3
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
if_icmplt L12
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mQryData Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
iconst_1
iadd
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
L11:
goto L4
L2:
astore 5
aload 1
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/clearResult(I)V
aload 5
athrow
L12:
aload 5
aload 1
iload 3
iload 2
invokevirtual com/nd/rj/common/encryptsqlite/SQLiteDatabase/getStringByIndex(II)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L13:
iload 3
iconst_1
iadd
istore 3
goto L10
.limit locals 6
.limit stack 4
.end method

.method private getColValue(I)Ljava/lang/String;
aconst_null
astore 3
aload 3
astore 2
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iflt L0
aload 3
astore 2
iload 1
iflt L0
aload 3
astore 2
iload 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
if_icmpge L0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mQryData Ljava/util/ArrayList;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/ArrayList
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method private getColValue(Ljava/lang/String;)Ljava/lang/String;
aconst_null
astore 2
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
ifnull L0
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/indexOf(Ljava/lang/Object;)I
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(I)Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public close()V
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mQryData Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mQryData Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
return
.limit locals 3
.limit stack 0
.end method

.method public deactivate()V
return
.limit locals 1
.limit stack 0
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial java/lang/Object/finalize()V
return
.limit locals 1
.limit stack 1
.end method

.method public getBlob(I)[B
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getColumnCount()I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/indexOf(Ljava/lang/Object;)I
ireturn
L0:
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/CPPSQLITE_ERRPR I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
.throws java/lang/IllegalArgumentException
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getColumnName(I)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mColumns Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getColumnNames()[Ljava/lang/String;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDouble(I)D
aload 0
iload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(I)Ljava/lang/String;
astore 2
aload 2
ifnull L0
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dreturn
L0:
dconst_0
dreturn
.limit locals 3
.limit stack 2
.end method

.method public getDouble(Ljava/lang/String;)D
aload 0
aload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dreturn
L0:
dconst_0
dreturn
.limit locals 2
.limit stack 2
.end method

.method public getExtras()Landroid/os/Bundle;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFloat(I)F
fconst_0
freturn
.limit locals 2
.limit stack 1
.end method

.method public getInt(I)I
aload 0
iload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(I)Ljava/lang/String;
astore 2
aload 2
ifnull L0
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getInt(Ljava/lang/String;)I
aload 0
aload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getLong(I)J
aload 0
iload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(I)Ljava/lang/String;
astore 2
aload 2
ifnull L0
aload 2
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lreturn
L0:
lconst_0
lreturn
.limit locals 3
.limit stack 2
.end method

.method public getLong(Ljava/lang/String;)J
aload 0
aload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getNotificationUri()Landroid/net/Uri;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPosition()I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getShort(I)S
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getString(I)Ljava/lang/String;
aload 0
iload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/rj/common/encryptsqlite/SQLiteCursor/getColValue(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getType(I)I
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getWantsAllOnMoveCalls()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isAfterLast()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isBeforeFirst()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isClosed()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isFirst()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLast()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
iconst_1
isub
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public isNull(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public move(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public moveToFirst()Z
iconst_0
istore 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
ifle L0
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public moveToLast()Z
iconst_0
istore 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
ifle L0
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
aload 0
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
iconst_1
isub
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public moveToNext()Z
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
iadd
istore 1
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
if_icmpge L0
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
aload 0
iload 1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
ireturn
L0:
aload 0
iconst_1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public moveToPosition(I)Z
iconst_0
istore 3
iload 3
istore 2
iload 1
iflt L0
iload 3
istore 2
iload 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
if_icmpge L0
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
aload 0
iload 1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public moveToPrevious()Z
iconst_0
istore 3
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
isub
istore 1
iload 3
istore 2
iload 1
iflt L0
iload 3
istore 2
iload 1
aload 0
getfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowCount I
if_icmpge L0
aload 0
iconst_0
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mIsAfterLast Z
aload 0
iload 1
putfield com/nd/rj/common/encryptsqlite/SQLiteCursor/mRowIndex I
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
return
.limit locals 2
.limit stack 0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
return
.limit locals 2
.limit stack 0
.end method

.method public requery()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
return
.limit locals 3
.limit stack 0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
return
.limit locals 2
.limit stack 0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
return
.limit locals 2
.limit stack 0
.end method
