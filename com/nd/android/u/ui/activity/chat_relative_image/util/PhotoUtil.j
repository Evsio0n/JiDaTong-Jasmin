.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/util/PhotoUtil
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static loadImageData(Landroid/content/Context;)Ljava/util/List;
.signature "(Landroid/content/Context;)Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch java/lang/Exception from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Exception from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Exception from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Exception from L22 to L23 using L2
.catch all from L22 to L23 using L3
.catch java/lang/Exception from L24 to L25 using L2
.catch all from L24 to L25 using L3
.catch java/lang/Exception from L26 to L27 using L2
.catch all from L26 to L27 using L3
.catch java/lang/Exception from L28 to L29 using L2
.catch all from L28 to L29 using L3
.catch java/lang/Exception from L30 to L31 using L2
.catch all from L30 to L31 using L3
.catch java/lang/Exception from L32 to L33 using L2
.catch all from L32 to L33 using L3
.catch java/lang/Exception from L34 to L35 using L2
.catch all from L34 to L35 using L3
.catch java/lang/Exception from L36 to L37 using L2
.catch all from L36 to L37 using L3
.catch java/lang/Exception from L38 to L39 using L2
.catch all from L38 to L39 using L3
.catch java/lang/Exception from L40 to L41 using L2
.catch all from L40 to L41 using L3
.catch java/lang/Exception from L42 to L43 using L2
.catch all from L42 to L43 using L3
.catch java/lang/Exception from L44 to L45 using L2
.catch all from L44 to L45 using L3
.catch java/lang/Exception from L46 to L47 using L2
.catch all from L46 to L47 using L3
.catch java/lang/Exception from L48 to L49 using L2
.catch all from L48 to L49 using L3
.catch java/lang/Exception from L50 to L51 using L2
.catch all from L50 to L51 using L3
.catch java/lang/Exception from L52 to L53 using L2
.catch all from L52 to L53 using L3
.catch java/lang/Exception from L54 to L55 using L2
.catch all from L54 to L55 using L3
.catch all from L56 to L57 using L3
.catch java/lang/Exception from L58 to L59 using L2
.catch all from L58 to L59 using L3
new java/util/ArrayList
dup
iconst_5
invokespecial java/util/ArrayList/<init>(I)V
astore 5
getstatic android/os/Environment/DIRECTORY_DCIM Ljava/lang/String;
invokestatic android/os/Environment/getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aconst_null
astore 2
aconst_null
astore 1
L0:
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
ldc "date_added DESC"
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
L1:
aload 3
astore 1
aload 3
astore 2
L4:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L60
L5:
aload 3
astore 1
aload 3
astore 2
L6:
aload 3
aload 3
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 0
L7:
aload 3
astore 1
aload 3
astore 2
L8:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L1
L9:
aload 3
astore 1
aload 3
astore 2
L10:
new com/nd/android/u/ui/activity/chat_relative_image/bean/Photo
dup
invokespecial com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/<init>()V
astore 8
L11:
aload 3
astore 1
aload 3
astore 2
L12:
aload 8
aload 3
aload 3
ldc "_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/id J
L13:
aload 3
astore 1
aload 3
astore 2
L14:
aload 8
aload 3
aload 3
ldc "_display_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/name Ljava/lang/String;
L15:
aload 3
astore 1
aload 3
astore 2
L16:
aload 8
aload 3
aload 3
ldc "_size"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/size J
L17:
aload 3
astore 1
aload 3
astore 2
L18:
aload 8
aload 0
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
L19:
aload 3
astore 1
aload 3
astore 2
L20:
aload 8
aload 3
aload 3
ldc "date_modified"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/modifiedDate J
L21:
aload 3
astore 1
aload 3
astore 2
L22:
aload 8
aload 3
aload 3
ldc "date_added"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/addedDate J
L23:
aload 3
astore 1
aload 3
astore 2
L24:
aload 8
aload 3
aload 3
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/desc Ljava/lang/String;
L25:
aload 3
astore 1
aload 3
astore 2
L26:
aload 8
aload 3
aload 3
ldc "mime_type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/type Ljava/lang/String;
L27:
aload 3
astore 1
aload 3
astore 2
L28:
aload 8
aload 3
aload 3
ldc "bucket_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketId J
L29:
aload 3
astore 1
aload 3
astore 2
L30:
aload 8
aload 3
aload 3
ldc "bucket_display_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketName Ljava/lang/String;
L31:
aload 3
astore 1
aload 3
astore 2
L32:
aload 6
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketId J
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/PhotoUtil/queryList(Ljava/util/List;J)Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Media;
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
astore 4
L33:
aload 4
astore 0
aload 4
ifnonnull L35
aload 3
astore 1
aload 3
astore 2
L34:
aload 5
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketId J
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/PhotoUtil/queryList(Ljava/util/List;J)Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Media;
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
astore 0
L35:
aload 0
astore 4
aload 0
ifnonnull L53
aload 3
astore 1
aload 3
astore 2
L36:
new com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket
dup
invokespecial com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/<init>()V
astore 4
L37:
aload 3
astore 1
aload 3
astore 2
L38:
aload 4
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketId J
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/id J
L39:
aload 3
astore 1
aload 3
astore 2
L40:
aload 4
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/bucketName Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/name Ljava/lang/String;
L41:
aload 3
astore 1
aload 3
astore 2
L42:
aload 4
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
iconst_0
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
ldc "/"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/path Ljava/lang/String;
L43:
aload 3
astore 1
aload 3
astore 2
L44:
aload 4
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/path Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/coverPath Ljava/lang/String;
L45:
aload 3
astore 1
aload 3
astore 2
L46:
aload 4
aload 8
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Photo/id J
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/coverId J
L47:
aload 3
astore 1
aload 3
astore 2
L48:
aload 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/photoList Ljava/util/List;
L49:
aload 3
astore 1
aload 3
astore 2
L50:
aload 4
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/path Ljava/lang/String;
aload 7
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L61
L51:
aload 3
astore 1
aload 3
astore 2
L52:
aload 5
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L53:
aload 3
astore 1
aload 3
astore 2
L54:
aload 4
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket/photoList Ljava/util/List;
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L55:
goto L1
L2:
astore 0
aload 1
astore 2
L56:
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L57:
aload 1
ifnull L62
aload 1
invokeinterface android/database/Cursor/close()V 0
L62:
aload 5
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 5
areturn
L61:
aload 3
astore 1
aload 3
astore 2
L58:
aload 6
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L59:
goto L53
L3:
astore 0
aload 2
ifnull L63
aload 2
invokeinterface android/database/Cursor/close()V 0
L63:
aload 0
athrow
L60:
aload 3
ifnull L62
aload 3
invokeinterface android/database/Cursor/close()V 0
goto L62
.limit locals 9
.limit stack 6
.end method

.method private static queryList(Ljava/util/List;J)Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Media;
.signature "<E:Lcom/nd/android/u/ui/activity/chat_relative_image/bean/Media;>(Ljava/util/List<TE;>;J)TE;"
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/ui/activity/chat_relative_image/bean/Media
astore 3
aload 3
getfield com/nd/android/u/ui/activity/chat_relative_image/bean/Media/id J
lload 1
lcmp
ifne L0
aload 3
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method
