.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/table/CommonSettingConfigTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_commonsettinconfig (_id integer primary key autoincrement, receivestarthour integer,receivestartminute integer,receiveendhour integer, receiveednminute integer,openvibra integer, newmsg_notification integer, silent integer, Landscape_mode integer, touchVibrate integer, popup_reminder integer, recmsg_background integer, auto_version_ck integer, lightReminder integer )"

.field public static final 'FIELD_AUTO_VERSION_CK' Ljava/lang/String; = "auto_version_ck"

.field public static final 'FIELD_LANDSCAPE_MODE' Ljava/lang/String; = "Landscape_mode"

.field public static final 'FIELD_LIGHT_REMINDER' Ljava/lang/String; = "lightReminder"

.field public static final 'FIELD_NEWMSG_NOTIFICATION' Ljava/lang/String; = "newmsg_notification"

.field public static final 'FIELD_OPENVIBRA' Ljava/lang/String; = "openvibra"

.field public static final 'FIELD_POPUP_REMINDER' Ljava/lang/String; = "popup_reminder"

.field public static final 'FIELD_RECEIVEEND_HOUR' Ljava/lang/String; = "receiveendhour"

.field public static final 'FIELD_RECEIVEEND_MINUTE' Ljava/lang/String; = "receiveednminute"

.field public static final 'FIELD_RECEIVESTART_HOUR' Ljava/lang/String; = "receivestarthour"

.field public static final 'FIELD_RECEIVESTART_MINUTE' Ljava/lang/String; = "receivestartminute"

.field public static final 'FIELD_RECMSG_BACKGROUND' Ljava/lang/String; = "recmsg_background"

.field public static final 'FIELD_SILENT' Ljava/lang/String; = "silent"

.field public static final 'FIELD_TOUCHVIBRATE' Ljava/lang/String; = "touchVibrate"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_commonsettinconfig"

.method static <clinit>()V
bipush 14
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "receivestarthour"
aastore
dup
iconst_2
ldc "receivestartminute"
aastore
dup
iconst_3
ldc "receiveendhour"
aastore
dup
iconst_4
ldc "receiveednminute"
aastore
dup
iconst_5
ldc "newmsg_notification"
aastore
dup
bipush 6
ldc "openvibra"
aastore
dup
bipush 7
ldc "silent"
aastore
dup
bipush 8
ldc "Landscape_mode"
aastore
dup
bipush 9
ldc "touchVibrate"
aastore
dup
bipush 10
ldc "popup_reminder"
aastore
dup
bipush 11
ldc "recmsg_background"
aastore
dup
bipush 12
ldc "auto_version_ck"
aastore
dup
bipush 13
ldc "lightReminder"
aastore
putstatic com/nd/android/u/business/db/table/CommonSettingConfigTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
