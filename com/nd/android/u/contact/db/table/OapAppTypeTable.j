.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapAppTypeTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_app_type (typecode text ,typename text )"

.field public static final 'FIELD_ID' Ljava/lang/String; = "typecode"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "typename"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_app_type"

.field public static final 'TAG' Ljava/lang/String; = "OapAppTypeTable"

.method static <clinit>()V
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "typecode"
aastore
dup
iconst_1
ldc "typename"
aastore
putstatic com/nd/android/u/contact/db/table/OapAppTypeTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapAppType;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "OapAppTypeTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapAppType
dup
invokespecial com/nd/android/u/contact/dataStructure/OapAppType/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "typecode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppType/setTypecode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "typename"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppType/setTypename(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
