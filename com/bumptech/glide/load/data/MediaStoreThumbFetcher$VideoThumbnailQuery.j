.bytecode 50.0
.class synchronized com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery
.super java/lang/Object
.implements com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery
.inner class static VideoThumbnailQuery inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery outer com/bumptech/glide/load/data/MediaStoreThumbFetcher

.field private static final 'PATH_PROJECTION' [Ljava/lang/String;

.field private static final 'PATH_SELECTION' Ljava/lang/String; = "kind = 1 AND video_id = ?"

.method static <clinit>()V
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_data"
aastore
putstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery/PATH_PROJECTION [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public queryPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
aload 2
invokevirtual android/net/Uri/getLastPathSegment()Ljava/lang/String;
astore 2
aload 1
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Video$Thumbnails/EXTERNAL_CONTENT_URI Landroid/net/Uri;
getstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery/PATH_PROJECTION [Ljava/lang/String;
ldc "kind = 1 AND video_id = ?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
areturn
.limit locals 3
.limit stack 8
.end method
