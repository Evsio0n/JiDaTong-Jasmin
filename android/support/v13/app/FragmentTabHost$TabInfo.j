.bytecode 50.0
.class final synchronized android/support/v13/app/FragmentTabHost$TabInfo
.super java/lang/Object
.inner class static final TabInfo inner android/support/v13/app/FragmentTabHost$TabInfo outer android/support/v13/app/FragmentTabHost

.field private final 'args' Landroid/os/Bundle;

.field private final 'clss' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private 'fragment' Landroid/app/Fragment;

.field private final 'tag' Ljava/lang/String;

.method <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Ljava/lang/String;Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost$TabInfo/tag Ljava/lang/String;
aload 0
aload 2
putfield android/support/v13/app/FragmentTabHost$TabInfo/clss Ljava/lang/Class;
aload 0
aload 3
putfield android/support/v13/app/FragmentTabHost$TabInfo/args Landroid/os/Bundle;
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
aload 0
getfield android/support/v13/app/FragmentTabHost$TabInfo/fragment Landroid/app/Fragment;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost$TabInfo/fragment Landroid/app/Fragment;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
aload 0
getfield android/support/v13/app/FragmentTabHost$TabInfo/tag Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;
aload 0
getfield android/support/v13/app/FragmentTabHost$TabInfo/clss Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;
aload 0
getfield android/support/v13/app/FragmentTabHost$TabInfo/args Landroid/os/Bundle;
areturn
.limit locals 1
.limit stack 1
.end method
