.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/VisitorTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_visitor (_id integer primary key autoincrement, tuid  BIGINT not null,fuid BIGINT not null,dateline BIGINT not null)"

.field public static final 'FIELD_DATELINE' Ljava/lang/String; = "dateline"

.field public static final 'FIELD_FUID' Ljava/lang/String; = "fuid"

.field public static final 'FIELD_TUID' Ljava/lang/String; = "tuid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_visitor"

.field public static final 'TAG' Ljava/lang/String; = "AlbumTable"

.method static <clinit>()V
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "tuid"
aastore
dup
iconst_2
ldc "fuid"
aastore
dup
iconst_3
ldc "dateline"
aastore
putstatic com/nd/android/u/contact/db/table/VisitorTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/VisitorInfo;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "AlbumTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/VisitorInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/VisitorInfo/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "fuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setFid(J)V
aload 1
aload 0
aload 0
ldc "tuid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setTuid(J)V
aload 1
aload 0
aload 0
ldc "dateline"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/VisitorInfo/setDateline(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
