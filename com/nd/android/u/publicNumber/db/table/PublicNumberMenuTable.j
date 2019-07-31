.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/db/table/PublicNumberMenuTable
.super com/nd/android/u/business/db/table/BaseTable
.inner class public PublicNumberMenuColumns inner com/nd/android/u/publicNumber/db/table/PublicNumberMenuTable$PublicNumberMenuColumns outer com/nd/android/u/publicNumber/db/table/PublicNumberMenuTable

.field public static final 'TABLE_NAME' Ljava/lang/String; = "public_number_menu"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/business/db/table/BaseTable/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCreateIndexStance()Ljava/lang/String;
ldc "public_number_menu"
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
ldc "public_number_menu"
ldc com/nd/android/u/publicNumber/db/table/PublicNumberMenuTable$PublicNumberMenuColumns
invokestatic com/nd/android/u/publicNumber/db/table/PublicNumberMenuTable/getCreateTableStance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method
