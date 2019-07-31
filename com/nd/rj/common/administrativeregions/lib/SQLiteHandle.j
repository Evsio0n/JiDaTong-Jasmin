.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/administrativeregions/lib/SQLiteHandle
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;>;"

.field private static final 'ALL_COLUMNS' [Ljava/lang/String;

.field private static final 'COLUMN_CODE' Ljava/lang/String; = "code"

.field private static final 'COLUMN_LEVEL' Ljava/lang/String; = "level"

.field private static final 'COLUMN_NAME' Ljava/lang/String; = "name"

.field private static final 'COLUMN_PINYIN' Ljava/lang/String; = "pinyin"

.field private static final 'COLUMN_PY' Ljava/lang/String; = "py"

.field private static final 'COLUMN_SUFFIX' Ljava/lang/String; = "suffix"

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "administrative_regions"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;

.field public static final enum 'INSTANCE' Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;

.field private static final 'TABLE_NAME' Ljava/lang/String; = "administrative_regions_item"

.field private 'mSQLiteDatabase' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
new com/nd/rj/common/administrativeregions/lib/SQLiteHandle
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
iconst_1
anewarray com/nd/rj/common/administrativeregions/lib/SQLiteHandle
dup
iconst_0
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aastore
putstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc "code"
aastore
dup
iconst_1
ldc "level"
aastore
dup
iconst_2
ldc "name"
aastore
dup
iconst_3
ldc "suffix"
aastore
dup
iconst_4
ldc "pinyin"
aastore
dup
iconst_5
ldc "py"
aastore
putstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/ALL_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private copyAssetsDB(Landroid/content/Context;)V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/FileNotFoundException from L3 to L4 using L5
.catch java/io/IOException from L6 to L7 using L8
.catch java/io/IOException from L9 to L10 using L8
.catch java/io/IOException from L11 to L12 using L8
aload 1
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
astore 4
aconst_null
astore 3
L0:
aload 4
ldc "db/administrative_regions"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 4
L1:
aload 4
astore 3
L13:
aload 3
ifnonnull L14
L15:
return
L14:
aconst_null
astore 4
L3:
new java/io/FileOutputStream
dup
aload 0
aload 1
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/getDBPath(Landroid/content/Context;)Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L4:
aload 1
ifnull L15
sipush 1024
newarray byte
astore 4
L6:
aload 3
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 2
L7:
iload 2
iconst_m1
if_icmpne L11
L9:
aload 1
invokevirtual java/io/FileOutputStream/close()V
aload 3
invokevirtual java/io/InputStream/close()V
L10:
return
L11:
aload 1
aload 4
iconst_0
iload 2
invokevirtual java/io/FileOutputStream/write([BII)V
L12:
goto L6
L5:
astore 1
aload 4
astore 1
goto L4
L2:
astore 4
goto L13
L8:
astore 1
return
.limit locals 5
.limit stack 4
.end method

.method private cursorToItem(Landroid/database/Cursor;)Lcom/nd/rj/common/administrativeregions/lib/Fileds;
new com/nd/rj/common/administrativeregions/lib/Fileds
dup
invokespecial com/nd/rj/common/administrativeregions/lib/Fileds/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mCode Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "level"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokestatic com/nd/rj/common/administrativeregions/lib/Level/valueToLevel(I)Lcom/nd/rj/common/administrativeregions/lib/Level;
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mLevel Lcom/nd/rj/common/administrativeregions/lib/Level;
aload 2
aload 1
aload 1
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mName Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "suffix"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mSuffix Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "pinyin"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mPinyin Ljava/lang/String;
aload 2
aload 1
aload 1
ldc "py"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/rj/common/administrativeregions/lib/Fileds/mPY Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private getDBPath(Landroid/content/Context;)Ljava/io/File;
new java/io/File
dup
aload 1
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
ldc "administrative_regions"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
ldc com/nd/rj/common/administrativeregions/lib/SQLiteHandle
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/administrativeregions/lib/SQLiteHandle
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/ENUM$VALUES [Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/administrativeregions/lib/SQLiteHandle
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method getDirectChildrenByCode(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/rj/common/administrativeregions/lib/Fileds;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
iconst_0
istore 2
ldc "level = ?"
astore 4
iconst_1
anewarray java/lang/String
astore 3
aload 3
iconst_0
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
invokevirtual com/nd/rj/common/administrativeregions/lib/Level/getValue()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
L7:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ldc "administrative_regions_item"
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/ALL_COLUMNS [Ljava/lang/String;
aload 4
aload 3
aconst_null
aconst_null
ldc "code"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
L1:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L3:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iload 2
ifeq L8
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L10
L8:
aload 5
areturn
L6:
iconst_1
istore 2
ldc "code LIKE ?"
astore 4
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/getValidCodePrefix(Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 1
invokestatic com/nd/rj/common/administrativeregions/lib/CodeParser/getLevelByCode(Ljava/lang/String;)Lcom/nd/rj/common/administrativeregions/lib/Level;
astore 3
aload 3
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_1 Lcom/nd/rj/common/administrativeregions/lib/Level;
if_acmpne L11
iconst_1
anewarray java/lang/String
astore 3
aload 3
iconst_0
new java/lang/StringBuilder
dup
aload 6
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "%00"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
goto L7
L11:
aload 3
getstatic com/nd/rj/common/administrativeregions/lib/Level/LEVEL_2 Lcom/nd/rj/common/administrativeregions/lib/Level;
if_acmpne L8
iconst_1
anewarray java/lang/String
astore 3
aload 3
iconst_0
new java/lang/StringBuilder
dup
aload 6
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
goto L7
L4:
aload 0
aload 3
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/cursorToItem(Landroid/database/Cursor;)Lcom/nd/rj/common/administrativeregions/lib/Fileds;
astore 4
aload 4
invokevirtual com/nd/rj/common/administrativeregions/lib/Fileds/isValid()Z
ifeq L1
aload 5
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L1
L2:
astore 1
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L10:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/administrativeregions/lib/Fileds
getfield com/nd/rj/common/administrativeregions/lib/Fileds/mCode Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L9
aload 3
invokeinterface java/util/Iterator/remove()V 0
aload 5
areturn
.limit locals 7
.limit stack 8
.end method

.method getItemsByCodes(Ljava/util/List;)Ljava/util/List;
.signature "(Ljava/util/List<Ljava/lang/String;>;)Ljava/util/List<Lcom/nd/rj/common/administrativeregions/lib/Fileds;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L5
.catch all from L6 to L7 using L5
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
ifnonnull L11
aload 2
areturn
L11:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aconst_null
astore 1
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L6
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L4:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 2
areturn
L6:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
iconst_1
anewarray java/lang/String
astore 1
L7:
aload 1
iconst_0
aload 4
aastore
L8:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ldc "administrative_regions_item"
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/ALL_COLUMNS [Ljava/lang/String;
ldc "code = ?"
aload 1
aconst_null
aconst_null
ldc "code"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L9
aload 0
aload 4
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/cursorToItem(Landroid/database/Cursor;)Lcom/nd/rj/common/administrativeregions/lib/Fileds;
astore 5
aload 5
invokevirtual com/nd/rj/common/administrativeregions/lib/Fileds/isValid()Z
ifeq L9
aload 2
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L9:
aload 4
invokeinterface android/database/Cursor/close()V 0
L10:
goto L3
L2:
astore 1
L12:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 1
athrow
L5:
astore 1
goto L12
.limit locals 6
.limit stack 8
.end method

.method public openDatabase(Landroid/content/Context;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L6
ldc com/nd/rj/common/administrativeregions/lib/SQLiteHandle
monitorenter
L0:
aload 0
getfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L1
aload 0
aload 1
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/copyAssetsDB(Landroid/content/Context;)V
aload 0
aload 0
aload 1
invokespecial com/nd/rj/common/administrativeregions/lib/SQLiteHandle/getDBPath(Landroid/content/Context;)Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aconst_null
iconst_0
invokestatic android/database/sqlite/SQLiteDatabase/openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/rj/common/administrativeregions/lib/SQLiteHandle/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
L1:
ldc com/nd/rj/common/administrativeregions/lib/SQLiteHandle
monitorexit
L3:
return
L2:
astore 1
L4:
ldc com/nd/rj/common/administrativeregions/lib/SQLiteHandle
monitorexit
L5:
aload 1
athrow
L6:
return
.limit locals 2
.limit stack 4
.end method
