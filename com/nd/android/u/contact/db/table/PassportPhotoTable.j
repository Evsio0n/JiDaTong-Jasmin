.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/PassportPhotoTable
.super java/lang/Object

.field public static final 'CREATE_TABLE' Ljava/lang/StringBuilder;

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_URL' Ljava/lang/String; = "url"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_passportphoto"

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "create table "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uu_passportphoto"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " BIGINT not null ,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "url"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " text,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "updatetime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " integer,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " primary key("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "))"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
putstatic com/nd/android/u/contact/db/table/PassportPhotoTable/CREATE_TABLE Ljava/lang/StringBuilder;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
