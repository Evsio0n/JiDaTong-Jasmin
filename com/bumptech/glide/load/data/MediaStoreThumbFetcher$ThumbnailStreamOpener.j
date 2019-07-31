.bytecode 50.0
.class synchronized com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener
.super java/lang/Object
.inner class static ThumbnailStreamOpener inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener outer com/bumptech/glide/load/data/MediaStoreThumbFetcher

.field private static final 'DEFAULT_SERVICE' Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

.field private 'query' Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

.field private final 'service' Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

.method static <clinit>()V
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService
dup
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService/<init>()V
putstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/DEFAULT_SERVICE Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/service Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
aload 0
aload 2
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/query Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
aload 0
getstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/DEFAULT_SERVICE Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
aload 1
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/<init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
return
.limit locals 2
.limit stack 3
.end method

.method private parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;
aconst_null
astore 2
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 2
astore 1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/service Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
aload 3
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService/get(Ljava/lang/String;)Ljava/io/File;
astore 3
aload 2
astore 1
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/service Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
aload 3
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService/exists(Ljava/io/File;)Z
ifeq L0
aload 2
astore 1
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/service Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
aload 3
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService/length(Ljava/io/File;)J
lconst_0
lcmp
ifle L0
aload 3
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 1
L0:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method public getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L8
.catch all from L9 to L10 using L3
.catch all from L11 to L12 using L3
.catch java/io/IOException from L13 to L14 using L15
.catch java/io/IOException from L16 to L17 using L18
iconst_m1
istore 4
aconst_null
astore 6
aconst_null
astore 5
L0:
aload 1
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 2
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 1
L1:
aload 1
astore 5
aload 1
astore 6
L4:
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
dup
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/<init>(Ljava/io/InputStream;)V
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getOrientation()I
istore 3
L5:
iload 3
istore 4
aload 1
ifnull L19
L6:
aload 1
invokevirtual java/io/InputStream/close()V
L7:
iload 3
istore 4
L19:
iload 4
ireturn
L2:
astore 1
aload 5
astore 6
L9:
ldc "MediaStoreThumbFetcher"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L12
L10:
aload 5
astore 6
L11:
ldc "MediaStoreThumbFetcher"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to open uri: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L12:
aload 5
ifnull L19
L13:
aload 5
invokevirtual java/io/InputStream/close()V
L14:
iconst_m1
ireturn
L15:
astore 1
iconst_m1
ireturn
L3:
astore 1
aload 6
ifnull L17
L16:
aload 6
invokevirtual java/io/InputStream/close()V
L17:
aload 1
athrow
L8:
astore 1
iload 3
ireturn
L18:
astore 2
goto L17
.limit locals 7
.limit stack 3
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
.throws java/io/FileNotFoundException
.catch all from L0 to L1 using L2
aconst_null
astore 4
aconst_null
astore 3
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/query Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;
aload 1
aload 2
invokeinterface com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery/queryPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor; 2
astore 5
aload 4
astore 2
aload 5
ifnull L1
aload 4
astore 2
L0:
aload 5
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 0
aload 5
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;
astore 2
L1:
aload 5
ifnull L3
aload 5
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
ifnull L4
aload 1
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
aload 2
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
astore 3
L4:
aload 3
areturn
L2:
astore 1
aload 5
ifnull L5
aload 5
invokeinterface android/database/Cursor/close()V 0
L5:
aload 1
athrow
.limit locals 6
.limit stack 3
.end method
