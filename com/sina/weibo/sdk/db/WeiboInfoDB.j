.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/db/WeiboInfoDB
.super java/lang/Object
.inner class private static WeiboInfo inner com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo outer com/sina/weibo/sdk/db/WeiboInfoDB

.field private static final 'WEIBO_NAME_URI' Landroid/net/Uri;

.method static <clinit>()V
ldc "content://com.sina.weibo.sdkProvider/query/package"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putstatic com/sina/weibo/sdk/db/WeiboInfoDB/WEIBO_NAME_URI Landroid/net/Uri;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getPackageName()Ljava/lang/String;
getstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/packageName Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getSupportApi()I
getstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/supportApi I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getVersionCode()I
getstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/versionCode I
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getVersionName()Ljava/lang/String;
getstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/versionName Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static initWeiboInfo(Landroid/content/Context;Z)V
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
.catch all from L24 to L25 using L3
aload 0
invokevirtual android/content/Context/getContentResolver()Landroid/content/ContentResolver;
astore 9
aconst_null
astore 8
aconst_null
astore 7
aload 7
astore 0
aload 8
astore 6
L0:
iload 1
putstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/isDownWeibo Z
L1:
aload 7
astore 0
aload 8
astore 6
L4:
aload 9
getstatic com/sina/weibo/sdk/db/WeiboInfoDB/WEIBO_NAME_URI Landroid/net/Uri;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 7
L5:
aload 7
astore 0
aload 7
astore 6
L6:
aload 7
ldc "package"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 2
L7:
aload 7
astore 0
aload 7
astore 6
L8:
aload 7
ldc "version_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 3
L9:
aload 7
astore 0
aload 7
astore 6
L10:
aload 7
ldc "version_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 4
L11:
aload 7
astore 0
aload 7
astore 6
L12:
aload 7
ldc "support_api"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
istore 5
L13:
aload 7
astore 0
aload 7
astore 6
L14:
aload 7
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L23
L15:
aload 7
astore 0
aload 7
astore 6
L16:
aload 7
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/packageName Ljava/lang/String;
L17:
aload 7
astore 0
aload 7
astore 6
L18:
aload 7
iload 3
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
putstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/versionName Ljava/lang/String;
L19:
aload 7
astore 0
aload 7
astore 6
L20:
aload 7
iload 4
invokeinterface android/database/Cursor/getInt(I)I 1
putstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/versionCode I
L21:
aload 7
astore 0
aload 7
astore 6
L22:
aload 7
iload 5
invokeinterface android/database/Cursor/getInt(I)I 1
putstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/supportApi I
L23:
aload 7
ifnull L26
aload 7
invokeinterface android/database/Cursor/close()V 0
L26:
return
L2:
astore 6
aload 0
astore 6
L24:
ldc "WeiboInfoDB"
ldc "get db error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L25:
aload 0
ifnull L26
aload 0
invokeinterface android/database/Cursor/close()V 0
return
L3:
astore 0
aload 6
ifnull L27
aload 6
invokeinterface android/database/Cursor/close()V 0
L27:
aload 0
athrow
.limit locals 10
.limit stack 6
.end method

.method public static isDownWeibo()Z
getstatic com/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo/isDownWeibo Z
ireturn
.limit locals 0
.limit stack 1
.end method
