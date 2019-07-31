.bytecode 50.0
.class final synchronized com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/common/android/utils/smiley/Smiley;>;"
.inner class private static final SmileyMapper inner com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper outer com/common/android/utils/smiley/SmileyHistoryDao

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/common/android/utils/smiley/SmileyHistoryDao$1;)V
aload 0
invokespecial com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/common/android/utils/smiley/Smiley;
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 1
invokestatic com/common/android/utils/smiley/SmileyHistoryTable/parseCursor(Landroid/database/Cursor;)Lcom/common/android/utils/smiley/Smiley;
areturn
.limit locals 3
.limit stack 1
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/common/android/utils/smiley/SmileyHistoryDao$SmileyMapper/mapRow(Landroid/database/Cursor;I)Lcom/common/android/utils/smiley/Smiley;
areturn
.limit locals 3
.limit stack 3
.end method
