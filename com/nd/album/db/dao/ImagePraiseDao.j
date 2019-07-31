.bytecode 50.0
.class public final synchronized enum com/nd/album/db/dao/ImagePraiseDao
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/album/db/dao/ImagePraiseDao;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/album/db/dao/ImagePraiseDao;

.field public static final enum 'INSTANCE' Lcom/nd/album/db/dao/ImagePraiseDao;

.method static <clinit>()V
new com/nd/album/db/dao/ImagePraiseDao
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/album/db/dao/ImagePraiseDao/<init>(Ljava/lang/String;I)V
putstatic com/nd/album/db/dao/ImagePraiseDao/INSTANCE Lcom/nd/album/db/dao/ImagePraiseDao;
iconst_1
anewarray com/nd/album/db/dao/ImagePraiseDao
dup
iconst_0
getstatic com/nd/album/db/dao/ImagePraiseDao/INSTANCE Lcom/nd/album/db/dao/ImagePraiseDao;
aastore
putstatic com/nd/album/db/dao/ImagePraiseDao/$VALUES [Lcom/nd/album/db/dao/ImagePraiseDao;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/album/db/dao/ImagePraiseDao;
ldc com/nd/album/db/dao/ImagePraiseDao
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/album/db/dao/ImagePraiseDao
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/album/db/dao/ImagePraiseDao;
getstatic com/nd/album/db/dao/ImagePraiseDao/$VALUES [Lcom/nd/album/db/dao/ImagePraiseDao;
invokevirtual [Lcom/nd/album/db/dao/ImagePraiseDao;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/album/db/dao/ImagePraiseDao;
areturn
.limit locals 0
.limit stack 1
.end method

.method public deleteImagePraise(Landroid/database/sqlite/SQLiteDatabase;JJ)V
aload 1
ifnull L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
ldc "image_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "uid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 1
ldc "image_praise"
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
L0:
return
.limit locals 7
.limit stack 4
.end method

.method public updateImagePraise(Landroid/database/sqlite/SQLiteDatabase;JJI)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 7
aload 7
ldc "image_id"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 7
ldc "uid"
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 7
ldc "isPraised"
iload 6
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "image_praise"
aconst_null
aload 7
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 8
.limit stack 4
.end method
