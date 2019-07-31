.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/BlacklistTable
.super java/lang/Object
.implements android/provider/BaseColumns
.inner class public static final BlackListColumns inner com/nd/android/u/contact/db/table/BlacklistTable$BlackListColumns outer com/nd/android/u/contact/db/table/BlacklistTable

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS uu_blacklist (myoapid INTEGER NOT NULL, uid INTEGER NOT NULL, PRIMARY KEY (myoapid , uid))"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_blacklist"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
