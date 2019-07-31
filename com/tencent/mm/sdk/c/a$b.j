.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/c/a$b
.super java/lang/Object
.implements android/provider/BaseColumns
.inner class public static final b inner com/tencent/mm/sdk/c/a$b outer com/tencent/mm/sdk/c/a

.field public static final 'CONTENT_URI' Landroid/net/Uri;

.method static <clinit>()V
ldc "content://com.tencent.mm.sdk.plugin.provider/sharedpref"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putstatic com/tencent/mm/sdk/c/a$b/CONTENT_URI Landroid/net/Uri;
return
.limit locals 0
.limit stack 1
.end method
