.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/onStart()V
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
return
.limit locals 2
.limit stack 1
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
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
.catch java/lang/Exception from L56 to L57 using L2
.catch all from L56 to L57 using L3
aconst_null
astore 8
aconst_null
astore 7
aload 7
astore 1
aload 8
astore 6
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
L1:
aload 7
astore 1
aload 8
astore 6
L4:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getContentResolver()Landroid/content/ContentResolver;
getstatic android/provider/MediaStore$Images$Media/EXTERNAL_CONTENT_URI Landroid/net/Uri;
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "_data"
aastore
dup
iconst_2
ldc "datetaken"
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 7
L5:
aload 7
ifnull L58
L59:
aload 7
astore 1
aload 7
astore 6
L6:
aload 7
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L58
L7:
aload 7
astore 1
aload 7
astore 6
L8:
aload 7
aload 7
ldc "_id"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 2
L9:
aload 7
astore 1
aload 7
astore 6
L10:
aload 7
aload 7
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 8
L11:
aload 7
astore 1
aload 7
astore 6
L12:
aload 7
aload 7
ldc "datetaken"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
lstore 4
L13:
aload 7
astore 1
aload 7
astore 6
L14:
aload 0
aload 8
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/getImageDirName(Ljava/lang/String;)Ljava/lang/String;
astore 9
L15:
aload 7
astore 1
aload 7
astore 6
L16:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
aload 9
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L33
L17:
aload 7
astore 1
aload 7
astore 6
L18:
new java/io/File
dup
aload 9
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 11
L19:
aload 7
astore 1
aload 7
astore 6
L20:
aload 11
invokevirtual java/io/File/isDirectory()Z
ifeq L59
L21:
aload 7
astore 1
aload 7
astore 6
L22:
iconst_m1
aload 9
ldc "/."
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
if_icmpne L59
L23:
aload 7
astore 1
aload 7
astore 6
L24:
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 10
L25:
aload 7
astore 1
aload 7
astore 6
L26:
aload 10
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
L27:
aload 7
astore 1
aload 7
astore 6
L28:
new com/common/android/ui/LocalAlbum/SortedMediaFiles
dup
invokespecial com/common/android/ui/LocalAlbum/SortedMediaFiles/<init>()V
astore 11
L29:
aload 7
astore 1
aload 7
astore 6
L30:
aload 11
aload 10
putfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
L31:
aload 7
astore 1
aload 7
astore 6
L32:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
aload 9
aload 11
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L33:
aload 7
astore 1
aload 7
astore 6
L34:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
aload 9
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 9
L35:
aload 9
ifnull L59
aload 7
astore 1
aload 7
astore 6
L36:
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 10
L37:
aload 7
astore 1
aload 7
astore 6
L38:
aload 10
aload 8
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
L39:
aload 7
astore 1
aload 7
astore 6
L40:
aload 10
lload 4
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
L41:
aload 7
astore 1
aload 7
astore 6
L42:
aload 10
lload 2
putfield com/common/android/ui/LocalAlbum/FileInfo/mID J
L43:
aload 7
astore 1
aload 7
astore 6
L44:
aload 9
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
lload 4
aload 9
getfield com/common/android/ui/LocalAlbum/SortedMediaFiles/mDirInfo Lcom/common/android/ui/LocalAlbum/FileInfo;
getfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
invokestatic java/lang/Math/max(JJ)J
putfield com/common/android/ui/LocalAlbum/FileInfo/mLastModified J
L45:
aload 7
astore 1
aload 7
astore 6
L46:
aload 9
aload 10
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/addFile(Lcom/common/android/ui/LocalAlbum/FileInfo;)V
L47:
goto L59
L2:
astore 6
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 7
aload 7
astore 6
aload 1
ifnull L60
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 7
astore 6
L60:
aload 6
areturn
L58:
aload 7
astore 1
aload 7
astore 6
L48:
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/clearLocalMedia()V
L49:
aload 7
astore 1
aload 7
astore 6
L50:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 8
L51:
aload 7
astore 1
aload 7
astore 6
L52:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L61
L53:
aload 7
astore 1
aload 7
astore 6
L54:
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 9
L55:
aload 7
astore 1
aload 7
astore 6
L56:
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
aload 9
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/addMediaFile(Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;)V
L57:
goto L51
L3:
astore 1
aload 6
ifnull L62
aload 6
invokeinterface android/database/Cursor/close()V 0
L62:
aload 1
athrow
L61:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
astore 1
aload 1
astore 6
aload 7
ifnull L60
aload 7
invokeinterface android/database/Cursor/close()V 0
aload 1
areturn
.limit locals 12
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/notifyObservers()V
return
.limit locals 1
.limit stack 1
.end method

.method public getImageDirName(Ljava/lang/String;)Ljava/lang/String;
aload 1
iconst_0
aload 1
bipush 47
invokevirtual java/lang/String/lastIndexOf(I)I
iconst_1
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
