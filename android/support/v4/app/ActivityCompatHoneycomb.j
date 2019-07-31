.bytecode 50.0
.class synchronized android/support/v4/app/ActivityCompatHoneycomb
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static dump(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokevirtual android/app/Activity/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method

.method static invalidateOptionsMenu(Landroid/app/Activity;)V
aload 0
invokevirtual android/app/Activity/invalidateOptionsMenu()V
return
.limit locals 1
.limit stack 1
.end method
