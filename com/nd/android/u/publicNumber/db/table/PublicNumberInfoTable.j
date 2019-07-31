.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable
.super com/nd/android/u/business/db/table/BaseTable
.inner class public PublicNumberInfoColumns inner com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable$PublicNumberInfoColumns outer com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable

.field public static final 'TABLE_NAME' Ljava/lang/String; = "public_number_info"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/table/BaseTable/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCreateIndexStance()Ljava/lang/String;
ldc "public_number_info"
ldc "_INDEX"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "pspid"
aastore
invokestatic com/nd/android/u/business/db/DbUtils/getCreateIndexString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 6
.end method

.method public static getCreateTableStance()Ljava/lang/String;
ldc "public_number_info"
ldc com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable$PublicNumberInfoColumns
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberInfoTable/getCreateTableStance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method
