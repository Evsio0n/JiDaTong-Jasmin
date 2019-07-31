.bytecode 50.0
.class synchronized com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper
.super java/lang/Object

.field private static final 'COLLEGE_TABLE_NAME' Ljava/lang/String; = "college_items"

.field private static final 'COLUMN_SCHOOL_CODE' Ljava/lang/String; = "school_code"

.field private static final 'COLUMN_SCHOOL_NAME' Ljava/lang/String; = "school_name"

.field private static final 'COLUMN_UNIT_CODE' Ljava/lang/String; = "unit_code"

.field private static final 'COLUMN_UNIT_NAME' Ljava/lang/String; = "unit_name"

.field public static final 'DB_FILE_NAME' Ljava/lang/String; = "school_info"

.field private static final 'SCHOOL_TABLE_NAME' Ljava/lang/String; = "school_items"

.field private 'mDB' Landroid/database/sqlite/SQLiteDatabase;

.method public <init>(Landroid/content/Context;)V
.catch android/database/sqlite/SQLiteException from L0 to L1 using L2
.catch android/database/sqlite/SQLiteException from L3 to L4 using L2
aload 0
invokespecial java/lang/Object/<init>()V
L0:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/copyAssetsDB(Landroid/content/Context;)Ljava/io/File;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 1
invokevirtual java/io/File/exists()Z
ifeq L4
aload 0
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
aconst_null
iconst_0
invokestatic android/database/sqlite/SQLiteDatabase/openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
L4:
return
L2:
astore 1
aload 1
invokevirtual android/database/sqlite/SQLiteException/printStackTrace()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 2
.limit stack 4
.end method

.method private copyAssetsDB(Landroid/content/Context;)Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/io/IOException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/io/IOException from L11 to L12 using L13
.catch all from L11 to L12 using L14
.catch java/io/IOException from L12 to L15 using L13
.catch all from L12 to L15 using L14
.catch java/io/IOException from L16 to L17 using L18
.catch java/io/IOException from L19 to L20 using L18
.catch java/io/IOException from L21 to L22 using L13
.catch all from L21 to L22 using L14
.catch all from L23 to L24 using L3
.catch java/io/IOException from L25 to L26 using L27
.catch java/io/IOException from L28 to L29 using L27
.catch java/io/IOException from L30 to L31 using L32
.catch java/io/IOException from L33 to L34 using L32
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L35
aconst_null
astore 3
L36:
aload 3
areturn
L35:
aconst_null
astore 6
aconst_null
astore 4
aconst_null
astore 9
aconst_null
astore 8
aload 9
astore 5
L0:
aload 1
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
ldc "db/school_info"
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 3
L1:
aload 9
astore 5
aload 3
astore 4
aload 3
astore 6
L4:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/getDBPath(Landroid/content/Context;)Ljava/io/File;
astore 7
L5:
aload 9
astore 5
aload 3
astore 4
aload 3
astore 6
L6:
aload 7
invokevirtual java/io/File/exists()Z
ifne L9
L7:
aload 9
astore 5
aload 3
astore 4
aload 3
astore 6
L8:
aload 7
invokevirtual java/io/File/createNewFile()Z
pop
L9:
aload 9
astore 5
aload 3
astore 4
aload 3
astore 6
L10:
new java/io/FileOutputStream
dup
aload 7
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L11:
sipush 1024
newarray byte
astore 4
L12:
aload 3
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 2
L15:
iload 2
ifgt L21
aload 3
ifnull L17
L16:
aload 3
invokevirtual java/io/InputStream/close()V
L17:
aload 7
astore 3
aload 1
ifnull L36
L19:
aload 1
invokevirtual java/io/FileOutputStream/flush()V
aload 1
invokevirtual java/io/FileOutputStream/close()V
L20:
aload 7
areturn
L18:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 7
areturn
L21:
aload 1
aload 4
iconst_0
iload 2
invokevirtual java/io/FileOutputStream/write([BII)V
L22:
goto L12
L13:
astore 7
L37:
aload 1
astore 5
aload 3
astore 4
L23:
aload 7
invokevirtual java/io/IOException/printStackTrace()V
L24:
aload 3
ifnull L26
L25:
aload 3
invokevirtual java/io/InputStream/close()V
L26:
aload 1
ifnull L29
L28:
aload 1
invokevirtual java/io/FileOutputStream/flush()V
aload 1
invokevirtual java/io/FileOutputStream/close()V
L29:
aconst_null
areturn
L27:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L29
L3:
astore 1
aload 4
astore 3
L38:
aload 3
ifnull L31
L30:
aload 3
invokevirtual java/io/InputStream/close()V
L31:
aload 5
ifnull L34
L33:
aload 5
invokevirtual java/io/FileOutputStream/flush()V
aload 5
invokevirtual java/io/FileOutputStream/close()V
L34:
aload 1
athrow
L32:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L34
L14:
astore 4
aload 1
astore 5
aload 4
astore 1
goto L38
L2:
astore 7
aload 8
astore 1
aload 6
astore 3
goto L37
.limit locals 10
.limit stack 4
.end method

.method private cursorToCollege(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 1
aload 1
ldc "unit_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 2
new com/nd/android/u/cloud/readschoolinfo/CollegeInfo
dup
aload 1
aload 1
ldc "unit_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aload 2
invokespecial com/nd/android/u/cloud/readschoolinfo/CollegeInfo/<init>(Ljava/lang/String;Ljava/lang/String;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method private cursorToSchoolInfoItem(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
new com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
dup
aload 1
aload 1
ldc "school_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
aload 1
aload 1
ldc "school_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokespecial com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/<init>(Ljava/lang/String;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 6
.end method

.method private getDBPath(Landroid/content/Context;)Ljava/io/File;
new java/io/File
dup
aload 1
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
ldc "school_info"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public queryCollege()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "college_items"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
ldc "unit_code DESC"
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
L1:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L2
aload 2
invokeinterface android/database/Cursor/close()V 0
L0:
aload 1
areturn
L2:
aload 0
aload 2
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToCollege(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
astore 3
aload 3
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/isObjectValid()Z
ifeq L1
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
.limit locals 4
.limit stack 8
.end method

.method public queryCollegeByCode(Ljava/lang/String;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "college_items"
aconst_null
ldc "unit_code =?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToCollege(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
areturn
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
new com/nd/android/u/cloud/readschoolinfo/CollegeInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/CollegeInfo/<init>()V
areturn
.limit locals 2
.limit stack 8
.end method

.method public queryCollegeByName(Ljava/lang/String;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "college_items"
aconst_null
ldc "unit_name =?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToCollege(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
areturn
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
new com/nd/android/u/cloud/readschoolinfo/CollegeInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/CollegeInfo/<init>()V
areturn
.limit locals 2
.limit stack 8
.end method

.method public querySchoolByCode(Ljava/lang/String;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "school_items"
aconst_null
ldc "school_code =?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToSchoolInfoItem(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
new com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/<init>()V
areturn
.limit locals 2
.limit stack 8
.end method

.method public querySchoolByName(Ljava/lang/String;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "school_items"
aconst_null
ldc "school_name =?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToSchoolInfoItem(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
areturn
L1:
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
new com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo
dup
invokespecial com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/<init>()V
areturn
.limit locals 2
.limit stack 8
.end method

.method public querySchoolBySubName(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/mDB Landroid/database/sqlite/SQLiteDatabase;
ldc "school_items"
aconst_null
ldc "school_name LIKE ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "%"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifne L2
aload 1
invokeinterface android/database/Cursor/close()V 0
L0:
aload 2
areturn
L2:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToSchoolInfoItem(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/isObjectValid()Z
ifeq L1
aload 2
aload 0
aload 1
invokespecial com/nd/android/u/cloud/readschoolinfo/SchoolInfoDBHelper/cursorToSchoolInfoItem(Landroid/database/Cursor;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
.limit locals 3
.limit stack 10
.end method
